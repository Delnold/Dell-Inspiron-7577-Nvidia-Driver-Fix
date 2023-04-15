# The name of the driver
$driverName = "NVIDIA GeForce GTX 1060 with Max-Q Design"

# Disable the driver
Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName $driverName).InstanceId -Confirm:$false

# Enable the driver
Enable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName $driverName).InstanceId -Confirm:$false
