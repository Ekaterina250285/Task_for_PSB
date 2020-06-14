Copy-Item -path 'c:\example' -destination 'c:\example1' -recurse

New-Item -Path ‘c:\example1\txt’ -ItemType 'Directory' -Force | Out-Null
New-Item -Path ‘c:\example1\gif’ -ItemType 'Directory' -Force | Out-Null
New-Item -Path ‘c:\example1\ods’ -ItemType 'Directory' -Force | Out-Null
New-Item -Path ‘c:\example1\rtf’ -ItemType 'Directory' -Force | Out-Null
New-Item -Path ‘c:\example1\bmp’ -ItemType 'Directory' -Force | Out-Null
New-Item -Path ‘c:\example1\png’ -ItemType 'Directory' -Force | Out-Null

Copy-Item -Path 'c:\example1\*.txt' -Destination 'c:\example1\txt\'
Copy-Item -Path 'c:\example1\*.gif' -Destination 'c:\example1\gif\'
Copy-Item -Path 'c:\example1\*.ods' -Destination 'c:\example1\ods\'
Copy-Item -Path 'c:\example1\*.rtf' -Destination 'c:\example1\rtf\'
Copy-Item -Path 'c:\example1\*.bmp' -Destination 'c:\example1\bmp\'
Copy-Item -Path 'c:\example1\*.png' -Destination 'c:\example1\png\'

Remove-Item C:\example1\*.*

$a = (Get-ChildItem C:\example1\txt\*.txt).Count
Write-Output ('Количество файлов в папке TXT - ' + $a)
$b = (Get-ChildItem C:\example1\gif\*.gif).Count
Write-Output ('Количество файcлов в папке GIF - ' + $b)
$c = (Get-ChildItem C:\example1\ods\*.ods).Count
Write-Output ('Количество файлов в папке ODS - ' + $c)
$d = (Get-ChildItem C:\example1\rtf\*.rtf).Count
Write-Output ('Количество файлов в папке RTF - ' + $d)
$e = (Get-ChildItem C:\example1\bmp\*.bmp).Count
Write-Output ('Количество файлов в папке BMP - ' + $e)
$f = (Get-ChildItem C:\example1\png\*.png).Count
Write-Output ('Количество файлов в папке PNG - ' + $f)

if ($a -le 3) {
Rename-Item -Path C:\example1\txt -NewName ('small_'+ $a)}
if ($b -le 3) {
Rename-Item -Path C:\example1\gif -NewName ('small_'+ $b)}
if ($c -le 3) {
Rename-Item -Path C:\example1\ods -NewName ('small_'+ $c)}
if ($d -le 3) {
Rename-Item -Path C:\example1\rtf -NewName ('small_'+ $d)}
if ($e -le 3) {
Rename-Item -Path C:\example1\bmp -NewName ('small_'+ $e)}
if ($f -le 3) {
Rename-Item -Path C:\example1\png -NewName ('small_'+ $f)}
