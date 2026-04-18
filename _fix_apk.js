const fs = require('fs');
const apkPath = 'C:/Users/Administrator/WorkBuddy/20260410212817/PandaTurbo/app/src/main/java/com/pandasu/turbo/ui/toolkit/ApkExtractorActivity.kt';
let apk = fs.readFileSync(apkPath, 'utf8');

// Fix HORIZONTAL -> LinearLayout.HORIZONTAL
apk = apk.replace(/\bHORIZONTAL\b(?!\s*\.)/g, 'LinearLayout.HORIZONTAL');
// Fix VERTICAL -> LinearLayout.VERTICAL
apk = apk.replace(/\bVERTICAL\b(?!\s*\.)/g, 'LinearLayout.VERTICAL');

fs.writeFileSync(apkPath, apk, 'utf8');
console.log('ApkExtractorActivity fixed');

// Verify no more unqualified VERTICAL/HORIZONTAL
const lines = apk.split('\n');
lines.forEach((l, i) => {
  if (!l.includes('LinearLayout') && (l.includes('HORIZONTAL') || l.includes('VERTICAL'))) {
    console.log('Line ' + (i+1) + ': ' + l.substring(0, 80));
  }
});
console.log('Done');
