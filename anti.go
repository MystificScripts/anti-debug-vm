package main

import (
	f "fmt"
	"os/exec"
	"strings"
)

func main() {
	f.Println("Creds to baum1810 for this idea!")
	cmd := exec.Command("powershell", "-Command", "Get-WmiObject Win32_PortConnector")
	output, err := cmd.CombinedOutput()
	if err != nil {
		f.Printf("Error: %v\n", err)
		return
	}

	result := string(output)

	if strings.Contains(result, "Port Connector") {
		f.Println("Not a virtual machine")
	} else {
		f.Println("Please Don't run this program in a virtual environment")
	}

	f.Println("Press Enter to exit")
	f.Scanln()
}
