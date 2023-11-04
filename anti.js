const { exec } = require('child_process');
const ps = 'powershell -Command "Get-WmiObject Win32_PortConnector"';

exec(ps, (error, stdout, stderr) => {
  if (error) {
    console.error(`Error: ${error.message}`);
    return;
  }

  const result = stdout.toLowerCase();

  if (result.includes('port connector')) {
    console.log('Not a virtual machine');
  } else {
    console.log('Please Don\'t run this program in a virtual environment');
  }

  console.log('Press Enter to exit');
  process.stdin.once('data', () => {
    process.exit();
  });
});
