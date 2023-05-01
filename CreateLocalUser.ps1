# create a local user in PowerShell with a random 8 strings password

$password = ConvertTo-SecureString -AsPlainText -Force -String (Get-Random -InputObject 'abcdefghjkmnpqrstwxyz0123456789' -Count 8); 
New-LocalUser -Name "{username}" -Password $password -FullName "{full name}" -Description "{description}"

#Replace "{username}" with the desired username for the local user.
#Replace "{full name}" with the full name of the local user.
#Replace "{description}" with a description for the local user (optional).
