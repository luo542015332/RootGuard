with open(r'C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\build.gradle', encoding='utf-8') as f:
    content = f.read()

marker = "    implementation 'androidx.compose.ui:ui-graphics'"
new_line = "    implementation 'androidx.multidex:multidex:2.0.1'"
insert = marker + "\n" + new_line

if marker in content:
    content = content.replace(marker, insert, 1)
    with open(r'C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\build.gradle', 'w', encoding='utf-8') as f:
        f.write(content)
    print('Done')
else:
    print('Marker not found')
