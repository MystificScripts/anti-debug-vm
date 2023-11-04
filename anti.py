import subprocess

ps = 'powershell -Command "Get-WmiObject Win32_PortConnector"'
res = subprocess.getoutput(ps)

if 'Port Connector' in res:
    print("Not a virtual machine, good 2 go")
else:
    print("Please Don't run this program in a virtual environment")

input("Press Enter to exit")
