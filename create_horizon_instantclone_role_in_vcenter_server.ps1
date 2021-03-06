Param (
# Connection Strings
$vcenter_address = (Read-Host -Prompt "`nvCenter Server IP or FQDN"),
$vcenter_username = (Read-Host -Prompt "`nvCenter Server Username"),
$vcenter_password = (Read-Host -Prompt "`nvCenter Server Password")
)

$o = Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

# Connect to vCenter Server
write-host "`nConnecting to vCenter Server at" $vcenter_address -foreground green
connect-viserver $vcenter_address -User $vcenter_username -Password $vcenter_password
write-host "`nConnected Successfully!" -foreground green

$role = (Read-Host -Prompt "`nRole Name")

New-VIRole -Name $role

Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Create folder")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Delete folder")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Allocate space")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Browse datastore")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Low level file operations")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Modify Cluster")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Acquire disk lease")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Add existing disk")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Add new disk")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Add or remove device") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Advanced configuration")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Change CPU count")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Change Memory")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Change Settings") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Change Swapfile placement")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Change resource")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Configure Host USB device")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Configure Raw device") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Configure managedBy")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Display connection settings")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Extend virtual disk")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Modify device settings") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Query Fault Tolerance compatibility")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Query unowned files")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Reload from path")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Remove disk") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Rename")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Reset guest information")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Set annotation")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Toggle disk change tracking") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Toggle fork parent")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Upgrade virtual machine compatibility")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Power off")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Power on") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Reset")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Suspend")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Perform wipe or shrink operations")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Connect devices") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Create from existing")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Create new")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Move")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Register") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Remove")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Unregister") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Create snapshot")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Remove snapshot")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Rename snapshot")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Revert to snapshot") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Customize guest")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Deploy template")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Read customization specifications")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Clone template") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Clone virtual machine")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Allow disk access") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Assign virtual machine to resource pool")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Enable methods")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Disable methods")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "System tag") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Manage custom attributes")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Set custom attribute")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Act as vCenter Server")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Assign network") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Configure")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Move network") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Remove")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Profile-driven storage update")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Profile-driven storage view")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "View") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Clone")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Decrypt")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Direct Access")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Encrypt") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Manage KMS")
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Migrate") 
Set-VIRole -Role $role -AddPrivilege (Get-VIPrivilege -Name "Register host")

disconnect-viserver -Confirm:$false
