Clear-Host

#incoming target directory
$studyDir = $args[0]
$scriptDir = split-path -parent $MyInvocation.MyCommand.Definition

<#
#for development
$studyDir = "C:\dev\IRT_C"
$scriptDir = split-path -parent $MyInvocation.MyCommand.Definition
#>

#load config
$config = Get-Content "$scriptDir\config.json" -Raw | ConvertFrom-Json

#delete .vs, bin, and obj folders recursively
Write-Host "Delete .vs/bin/obj"
Get-childitem . -Path $studyDir -Include .vs -Recurse -Force | remove-item -Recurse -Force
Get-childitem . -Path $studyDir -Include bin -Recurse -Force | remove-item -Recurse -Force
Get-childitem . -Path $studyDir -Include obj -Recurse -Force | remove-item -Recurse -Force

#git clean
Write-Host "Git clean"
Set-Location $studyDir
Git clean -f

#clear nuget cache
Write-Host "Clear NuGet cache"
$nugetExe = $studyDir + $config.nugetPath
&$nugetExe locals all -clear 


Write-Host ""
Read-Host "Complete. Press any key to exit"