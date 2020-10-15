Solution Cleanup


SETUP
----------------------------------------------------------------------------------------------------
1. Place the Solution Cleanup project folder 
in your development directory (ex. C:\dev).

2. Right click setup.bat and select "Run as administrator" to add the Windows Explorer context menu item.
*NOTE: This step will change your PowerShell Execution Policy to "Bypass" to allow the context menu item to 
run a script. It also adds an entry to the Windows registry. When modifying the Windows registry, it is always a good idea
to make a backup before modifying.


USE
----------------------------------------------------------------------------------------------------
Close Visual Studio. Right click on a study sub-directory in your dev directory. If setup was done correctly,
you will see a context menu item called "Solution Cleanup". When you click this menu item,
the PowerShell CLI will open and you will display output from the cleanup steps.



