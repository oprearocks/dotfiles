#!/usr/bin/env node

var exec = require('child_process').exec,
    currentDir = __dirname,
    configuratorPath = 'cartridges/mmi_configurator/cartridge/static/default/';

function cleanup(dir) {
    
    var gotoCurrentFileCommand = 'cd ' + dir,
        gitStashOperationCommand = 'git stash pop -q',
        exitCode = 0;

    exec('echo we cding', function(error, stdout, stderr) {

        exec('pwd', function(error1, stdout1, stderr1) {

            console.log('stash');
            if (error1) {
                console.log('Something went wrong while executing your request.');
                console.log(stderr1);
                exitCode = -1;
            } 

        });

        console.log(stdout);

        if (error) {
            console.log('Build script failed with the following error:');
            console.log(stderr);
            exitCode = -1;
        }

    });


}

function operateOnRepo() {

    var gotoCurrentFileCommand = 'cd ' + dir,
        gitDiffOperationCommand = 'git diff --quiet HEAD';

    exec(gotoCurrentFileCommand, function(error, stdout, stderr) {

        exec(gitDiffOperationCommand, function(error1, stdout1, stderr1) {

            console.log('p');
            if (error1) {
                console.log('Something went wrong while executing your request.');
                console.log(stderr1);
                exitCode = -1;
            } else if (stdout1) {
                console.log('w/ stdout');
            } else {
                console.log('w/o stdout');
            }
        });
        console.log(stdout);

        if (error) {
            console.log('Build script failed with the following error:');
            console.log(stderr);
            exitCode = -1;
        }

    });
}

cleanup(currentDir);
