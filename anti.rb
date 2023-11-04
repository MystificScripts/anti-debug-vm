require 'open3'

stdout, stderr, status = Open3.capture3("powershell -Command \"Get-WmiObject Win32_PortConnector\"")

if status.success?
  result = stdout.downcase
  if result.include?("port connector")
    puts "Not a vm"
  else
    puts "Please Don't run this program in a virtual environment"
  end
else
  puts "Error: #{stderr}"
end

puts "Press Enter to exit"
gets
