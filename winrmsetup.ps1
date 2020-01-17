#check that you should have powershell version > 3.0 and .net framework version > 4.0
powershell
winrm qc
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
powershell.exe -ExecutionPolicy ByPass -File $file

#check listner on windows with following command in powershell
#winrm enumerate winrm/config/Listener
#winrm get winrm/config/Service
#winrm get winrm/config/Winrs
