import subprocess
import base64
import sqlite3
import os

DEVICE = '695b931f'

def adb(cmd):
    result = subprocess.run(f'adb -s {DEVICE} {cmd}', shell=True, capture_output=True)
    return result.stdout, result.stderr

# Pull current DB
print("Pulling DB from device...")
stdout, _ = adb(f'exec-out "su -c cat /data/adb/lspd/config/modules_config.db | base64"')

b64 = stdout.strip()
print(f"Base64 length: {len(b64)}")

db_bytes = base64.b64decode(b64)
db_file = r'C:\Temp\lsposed_db\live.db'
with open(db_file, 'wb') as f:
    f.write(db_bytes)
print(f"DB file size: {len(db_bytes)}")

# Query
conn = sqlite3.connect(db_file)
cur = conn.cursor()

# WAL check - connect with WAL to merge
try:
    cur.execute('PRAGMA journal_mode=WAL')
    wal_mode = cur.fetchone()[0]
    print(f"Journal mode: {wal_mode}")
except:
    pass

# Get state
cur.execute("SELECT * FROM modules_state")
print("\nAll modules_state:")
for r in cur.fetchall():
    print(f"  {r}")

# Check specific
cur.execute("SELECT enabled FROM modules_state WHERE module_pkg_name=?", ('com.pandasu.turbo',))
result = cur.fetchone()
if result:
    print(f"\nPandaTurbo enabled: {result[0]}")
else:
    print("\nPandaTurbo NOT FOUND in modules_state!")

conn.close()
