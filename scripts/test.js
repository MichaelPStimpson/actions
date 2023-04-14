var exec = require('child_process').execSync;

function main() {
  //const arguments = process.argv.slice(2);
  //const fileNames = arguments[0].split(',');
  let val = exec('find $(pwd)/force-app/* -name "*.cls"');
  process.stdout.write(val);
}
main();
