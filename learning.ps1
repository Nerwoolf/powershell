Get-Process |
Format-Table Name,
@{n='VM(MB)';e={$_.VM / 1GB -as [int]}} -autosize