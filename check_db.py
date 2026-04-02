import sqlite3
conn = sqlite3.connect('modules_config.db')

# 查看所有模块
print("=== 所有模块 ===")
cursor = conn.execute("SELECT * FROM modules")
for row in cursor.fetchall():
    print(row)
