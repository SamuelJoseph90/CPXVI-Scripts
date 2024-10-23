# List all .mp3 files in user folders
$files = Get-ChildItem -Path "C:\Users" -Recurse -Filter "*.mp3"
$files

Get-ChildItem -Path "C:\Users" -Recurse -Filter "*.mp3" -ErrorAction SilentlyContinue
Get-ChildItem -Path "C:\Users" -Recurse -Filter "*.txt" -ErrorAction SilentlyContinue

# Stop and disable ftp service
$service = Get-Service -DisplayName "Microsoft FTP Service"
Stop-Service -InputObject $service -Force
Set-Service -InputObject $service -StartupType Disabled

# Start windows update service
$service = Get-Service -DisplayName "Windows Update"
Set-Service -InputObject $service -StartupType Automatic
$service = Start-Service -InputObject $service -PassThru
