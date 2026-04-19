import subprocess
import base64
import sqlite3
import os

DEVICE_SERIAL = '695b931f'

def run(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Error: {result.stderr[:200]}")
    return result.stdout

def adbexec(cmd):
    return run(f'adb -s {DEVICE_SERIAL} exec-out "{cmd}"')

def adbshell(cmd):
    return run(f'adb -s {DEVICE_SERIAL} shell "{cmd}"')

# 1. Pull DB via base64
print("=== 1. Pulling modules_config.db ===")
b64_data = adbexec("su -c cat /data/adb/lspd/config/modules_config.db | base64")
b64_data = b64_data.strip()
print(f"Base64 size: {len(b64_data)} chars")

db_bytes = base64.b64decode(b64_data)
db_path = r'C:\Temp\lsposed_db\modules_config_current.db'
with open(db_path, 'wb') as f:
    f.write(db_bytes)
print(f"DB size: {len(db_bytes)} bytes")

# 2. Query current state
print("\n=== 2. Current DB state ===")
conn = sqlite3.connect(db_path)
conn.execute('PRAGMA journal_mode=WAL')
cur = conn.cursor()

# Get schema
cur.execute("PRAGMA table_info(modules_state)")
print("modules_state columns:", [c[1] for c in cur.fetchall()])

cur.execute("SELECT * FROM modules_state")
print("modules_state rows:")
for r in cur.fetchall():
    print(f"  {r}")

# 3. Update enabled=1
print("\n=== 3. Updating enabled=1 ===")
cur.execute("UPDATE modules_state SET enabled=1 WHERE module_pkg_name=?", ('com.pandasu.turbo',))
conn.commit()

cur.execute("SELECT * FROM modules_state WHERE module_pkg_name=?", ('com.pandasu.turbo',))
print("After update:", cur.fetchall())
conn.close()

# 4. Encode modified DB
with open(db_path, 'rb') as f:
    modified_db = f.read()
modified_b64 = base64.b64encode(modified_db).decode()

# 5. Push back to device
print(f"\n=== 4. Pushing modified DB back ({len(modified_db)} bytes) ===")
tmp_path = '/data/local/tmp/modules_config.db'
# Write base64 to device
run(f'adb -s {DEVICE_SERIAL} shell "echo \\"{modified_b64}\\" | base64 -d > {tmp_path}"')

# Actually, let's try a different approach - write the binary directly
# Use adb exec-in or a different method
print("Trying alternative push method...")

# Alternative: write to a temp file via cat
push_script = f'''
su -c "echo \\"{modified_b64}\\" > /data/local/tmp/modules_config.db.b64"
su -c "base64 -d /data/local/tmp/modules_config.db.b64 > /data/adb/lspd/config/modules_config.db"
su -c "chmod 660 /data/adb/lspd/config/modules_config.db"
su -c "ls -la /data/adb/lspd/config/modules_config.db"
'''
print("Shell script prepared")
print(push_script[:300])
