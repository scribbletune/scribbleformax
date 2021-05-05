#!/usr/bin/env node
const { execSync } = require('child_process');
const path = require('path');
const fs = require('fs');

if (process.argv.length < 3) {
  console.log('You have to provide a name for your Max device. For example :');
  console.log('npx generate-scribble4max-device awesome-device');
  process.exit(1);
}

const projectName = process.argv[2];
const currentPath = process.cwd();
const projectPath = path.join(currentPath, projectName);
const git_repo = 'https://github.com/JanZaion/scribbleformax'; //Im pointing it to my fork of the main repo for dev purposes, should be changed later

try {
  fs.mkdirSync(projectPath);
} catch (err) {
  if (err.code === 'EEXIST') {
    console.log(`The file ${projectName} already exist in the current directory, please give it a different name.`);
  } else {
    console.log(err);
  }
  process.exit(1);
}

(async () => {
  try {
    console.log('Downloading files...');
    execSync(`git clone --depth 1 ${git_repo} ${projectPath}`);

    process.chdir(projectPath);

    console.log('Installing dependencies...');
    execSync('npm install');
    
    console.log('Removing useless files');
    execSync('npx rimraf ./.git');
    fs.rmdirSync(path.join(projectPath, 'bin'), { recursive: true });

    console.log(`Installation is complete, good luck making ${projectName}!`);
  } catch (error) {
    console.log(error);
  }
})()
