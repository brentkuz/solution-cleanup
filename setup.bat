powershell.exe Set-ExecutionPolicy -ExecutionPolicy Bypass -Force

cd /D "%~dp0"

@Reg Add "HKCU\Software\Classes\Directory\shell\SolutionCleanup" /VE /D "Solution &Cleanup" /F >Nul
@Reg Add "HKCU\Software\Classes\Directory\shell\SolutionCleanup\command" /VE /D "powershell.exe %CD%\SolutionCleanup.ps1 \"%%L\"" /F >Nul









