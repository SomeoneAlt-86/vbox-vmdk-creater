cd %programfiles%\Oracle\VirtualBox

set /p id="Enter Drive number: "

echo Making vmdk of drive %id%
VBoxManage internalcommands createrawvmdk -filename C:\usb.vmdk -rawdisk \\.\PhysicalDrive%id%

if exist C:\usb.vmdk echo successfuly created vmdk!
if not exist C:\usb.vmdk echo unable to write vmdk
