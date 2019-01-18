
Write-Verbose -Verbose "Extracting build agent"
Add-Type -AssemblyName System.IO.Compression.FileSystem ; 
[System.IO.Compression.ZipFile]::ExtractToDirectory("vsts-agent-win-x64-2.144.0.zip", "$PWD")

