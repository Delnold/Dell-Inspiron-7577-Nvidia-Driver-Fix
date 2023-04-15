# Alternative way by InstanceId of the Nvidia driver device

# Driver Name
$driverInfo = $driverInfo = (Get-PnpDevice -FriendlyName "*Nvidia GeForce*" | ft -wrap -autosize instanceid)
$driverName = $driverInfo | findstr "PCI"

# Disable The Driver
Disable-PnpDevice -InstanceId $driverName -Confirm:$false

#Enable The Driver
Enable-PnpDevice -InstanceId $driverName -Confirm:$false
