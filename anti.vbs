On Error Resume Next

Set service = GetObject("winmgmts:\\.\root\cimv2")

Set cool = service.ExecQuery("Select * from Win32_PortConnector")

If Err.Number = 0 Then
    WScript.Echo "Not a virtual machine"
Else
    WScript.Echo "Please Don't run this program in a virtual environment"
End If

WScript.StdIn.ReadLine
