# block access to a Windows folder 

$acl = Get-Acl "C:\\Windows"

$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone","FullControl","Deny")
$acl.SetAccessRule($rule)
Set-Acl "C:\\Path\\To\\Folder" $acl

#Note: Replace "C:\Path\To\Folder" with the path to your folder.
