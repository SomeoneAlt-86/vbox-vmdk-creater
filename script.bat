@ echo off

cd %programfiles%\Oracle\VirtualBox

set /p id="Enter Drive number: "

echo Making vmdk of drive %id%

VBoxManage internalcommands createrawvmdk -filename C:\Drive.vmdk -rawdisk \\.\PhysicalDrive%id%
