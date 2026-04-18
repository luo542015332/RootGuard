const fs = require('fs');
const hfPath = 'C:/Users/Administrator/WorkBuddy/20260410212817/PandaTurbo/app/src/main/java/com/pandasu/turbo/ui/toolkit/HomeFragment.kt';
let hf = fs.readFileSync(hfPath, 'utf8');

// Fix emoji in char literals
hf = hf.replace(/\u26A0/g, '\\u26A0');
// The issue: emoji in switch/when as Char literal - replace with code
// Also fix any remaining unresolved VERTICAL/HORIZONTAL
hf = hf.replace(/= VERTICAL(?!\w)/g, '= android.widget.LinearLayout.VERTICAL');
hf = hf.replace(/= HORIZONTAL(?!\w)/g, '= android.widget.LinearLayout.HORIZONTAL');

fs.writeFileSync(hfPath, hf, 'utf8');
console.log('HomeFragment fixed');

// Also check for emoji char literals
const lines = hf.split('\n');
lines.forEach((l, i) => {
  // Look for single-quote char literals that might contain multi-char strings
  const match = l.match(/'([^']{2,})'/);
  if (match) {
    console.log(`Line ${i+1}: ${l.substring(0,100)}`);
  }
});
