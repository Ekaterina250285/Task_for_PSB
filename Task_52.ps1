(Get-WmiObject Win32_Process - ComputerName OscarTestApp | ?{$_.ProcessName -match "ReportService.exe"}). Terminate()
