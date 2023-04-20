var exec = require('child_process').execSync('rsync -avAXz --info=progress2 "/src" "/dest"',{stdio: 'inherit'});
	

 
	

function main() {
process.stdout.write('1');
const arguments = process.argv.slice(2);
process.stdout.write('2');
const fileNames = arguments[0].split(',');
process.stdout.write('3');
const pwd = arguments[1];
let paths = [];
	

   
	

    // Clear the temp folder
	

    //exec('rm -r $(pwd)/temp && mkdir temp');
	

    process.stdout.write('4');
	

    exec('mkdir temp');
	

    fileNames.forEach((name) => {
	

        process.stdout.write('5');
	

        let val = exec('find $(pwd)/force-app/* -name "' + name + '.cls"');
	

        process.stdout.write('6');
	

        process.stdout.write(val);
	

        process.stdout.write('7');
	

        exec('cp "' + val + '" "$(pwd)/temp/'  + name + '"');
	

        process.stdout.write('Copied ' + name);
	

    });
	

}
	

 
	

main();
