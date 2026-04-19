import sqlite3

# Connect to DB with WAL
db_path = r'C:\Temp\lsposed_db\modules_config.db'
wal_path = r'C:\Temp\lsposed_db\modules_config.db-wal'

conn = sqlite3.connect(db_path)
conn.execute(f"PRAGMA journal_mode=WAL")
cur = conn.cursor()

# Check current state
cur.execute("SELECT * FROM modules_state WHERE package_name='com.pandasu.turbo'")
print("Before:", cur.fetchall())

# Update enabled=1
cur.execute("UPDATE modules_state SET enabled=1 WHERE package_name='com.pandasu.turbo'")
conn.commit()

# Check after
cur.execute("SELECT * FROM modules_state WHERE package_name='com.pandasu.turbo'")
print("After:", cur.fetchall())

conn.close()
print("Done. WAL checkpoint done.")
