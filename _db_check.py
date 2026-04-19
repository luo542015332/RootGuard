import sqlite3

# Read main DB
db_path = r'C:\Temp\lsposed_db\modules_config.db'
wal_path = r'C:\Temp\lsposed_db\modules_config.db-wal'

conn = sqlite3.connect(db_path)
cur = conn.cursor()

# Check tables
cur.execute("SELECT name FROM sqlite_master WHERE type='table'")
tables = cur.fetchall()
print('Tables:', [t[0] for t in tables])

# Check modules
cur.execute("SELECT * FROM modules")
rows = cur.fetchall()
print('\nModules table rows:')
for row in rows:
    print(row)

# Check all tables for pandasu/turbo
for t in [t[0] for t in tables]:
    try:
        cur.execute(f"SELECT * FROM {t}")
        all_rows = cur.fetchall()
        if any('pandasu' in str(r).lower() or 'turbo' in str(r).lower() or 'battery' in str(r).lower() for r in all_rows):
            print(f'\n{t} has panda/turbo/battery:')
            for r in all_rows:
                if 'pandasu' in str(r).lower() or 'turbo' in str(r).lower() or 'battery' in str(r).lower():
                    print(r)
    except Exception as e:
        print(f'Error in {t}: {e}')

conn.close()

# Also check WAL for recent entries
print('\n=== WAL file (first 10KB for pandasu) ===')
try:
    with open(wal_path, 'rb') as f:
        content = f.read()
    text = content.decode('utf-8', errors='replace')
    # Find pandasu/turbo references
    lines = text.split('\n')
    for i, line in enumerate(lines):
        if 'pandasu' in line.lower() or 'turbo' in line.lower() or 'battery' in line.lower():
            print(f'WAL line {i}: {line[:200]}')
except Exception as e:
    print(f'WAL error: {e}')
