<#    clean your recycle bin    #>
Clear-RecycleBin -Force
<#   clean the specify folder but without some needed files or folder   
    -Path : change this to specify the folder you want
    -Exclude : The file you don't want to delete, if there has more than one file, use ',' to add
        example : -Exclude need.txt, need1.txt  
#>
Get-ChildItem -Path 'C:\Users\User\Downloads' -Exclude TheFileYouNeed.txt | Remove-Item -Recurse -Force
<# Scan the computer use windows defender   
    ensure there is no other defender on your computer
    if there has other defender, you must turn on windows defender first
#>
Start-MpScan -ScanType QuickScan
# Author: Kevin Xheng 3/12/2023
