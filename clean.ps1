<#    clean your recycle bin    #>
# Clear-RecycleBin -Force
# Clear-RecycleBin has the issue before powershell v7.00, and still have bug after that if you still want to use it use
# Clear-RecycleBin -ErrorAction SilentlyContinue
# to avoid error
<#   clean the specify folder but without some needed files or folder   
    -Path : change this to specify the folder you want
    -Exclude : The file you don't want to delete, if there has more than one file, use ',' to add
        example : -Exclude need.txt, need1.txt  
#>
$desktop_exclude_files = @("the_file_you_want","the_file_you_want2")

Get-ChildItem -Path  "C:\Users\user\Downloads"  | Remove-Item -Recurse -Force
Get-ChildItem -Path  "C:\Users\user\Desktop" -Exclude $desktop_exclude_files  | Remove-Item -Recurse -Force

<# Scan the computer use windows defender   
    ensure there is no other defender on your computer
    if there has other defender, you must turn on windows defender first
#>
Start-MpScan -ScanType QuickScan

# Author: Kevin Xheng 3/12/2023
