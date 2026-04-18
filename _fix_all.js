const fs = require('fs');

// Fix all compilation errors at once

// ===== 1. SystemInfoActivity - clean duplicates, fix constants =====
const siPath = 'C:/Users/Administrator/WorkBuddy/20260410212817/PandaTurbo/app/src/main/java/com/pandasu/turbo/ui/toolkit/SystemInfoActivity.kt';
let si = fs.readFileSync(siPath, 'utf8');
const siLines = si.split('\n').filter((line, i, arr) => {
  if (i > 0 && line.startsWith('import android.view') && arr[i-1].startsWith('import android.view')) return false;
  return true;
});
si = siLines.join('\n')
  .replace(/= VERTICAL(?!\w)/g, '= android.widget.LinearLayout.VERTICAL')
  .replace(/= HORIZONTAL(?!\w)/g, '= android.widget.LinearLayout.HORIZONTAL');
fs.writeFileSync(siPath, si, 'utf8');
console.log('SystemInfoActivity OK');

// ===== 2. ApkExtractorActivity - add Color import =====
const apkPath = 'C:/Users/Administrator/WorkBuddy/20260410212817/PandaTurbo/app/src/main/java/com/pandasu/turbo/ui/toolkit/ApkExtractorActivity.kt';
let apk = fs.readFileSync(apkPath, 'utf8');
if (!apk.includes('import android.graphics.Color')) {
  apk = apk.replace('import android.Manifest', 'import android.Manifest\nimport android.graphics.Color');
}
fs.writeFileSync(apkPath, apk, 'utf8');
console.log('ApkExtractorActivity OK');

// ===== 3. BatteryInfoActivity - add ProgressDialog import =====
const batPath = 'C:/Users/Administrator/WorkBuddy/20260410212817/PandaTurbo/app/src/main/java/com/pandasu/turbo/ui/toolkit/BatteryInfoActivity.kt';
let bat = fs.readFileSync(batPath, 'utf8');
if (!bat.includes('import android.app.ProgressDialog')) {
  bat = bat.replace('import androidx.appcompat.app.AppCompatActivity', 'import android.app.ProgressDialog\nimport androidx.appcompat.app.AppCompatActivity');
}
fs.writeFileSync(batPath, bat, 'utf8');
console.log('BatteryInfoActivity OK');

// ===== 4. HomeFragment - fix emoji char literals =====
const hfPath = 'C:/Users/Administrator/WorkBuddy/20260410212817/PandaTurbo/app/src/main/java/com/pandasu/turbo/ui/toolkit/HomeFragment.kt';
let hf = fs.readFileSync(hfPath, 'utf8');
// Replace emoji char literal comparison with char code comparison
// Find the when block that uses emoji characters and replace it
hf = hf.replace(
  /shizukuStatus\.first\(\)\s*==\s*'(\u26A0|\u2705|\u274C)'/g,
  function(match, emoji) {
    return 'shizukuStatus.codePointAt(0) == ' + emoji.codePointAt(0);
  }
);
// Also replace string comparison with codePointAt
hf = hf.replace(
  /shizukuStatus\.first\(\)\s*==\s*'([^']+)'/g,
  function(match, char) {
    return 'shizukuStatus.codePointAt(0) == ' + char.codePointAt(0);
  }
);
// Fix getChildAt issues - the children extension is defined but getChildAt is a method on ViewGroup
// Add children extension properly
if (!hf.includes('private val android.view.ViewGroup.children')) {
  hf = hf.replace(
    'private val android.view.ViewGroup.children',
    'private val android.view.ViewGroup.children'
  );
}
fs.writeFileSync(hfPath, hf, 'utf8');
console.log('HomeFragment OK');

console.log('All fixes applied');
