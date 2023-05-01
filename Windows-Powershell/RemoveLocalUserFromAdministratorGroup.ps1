# To remove the currently logged in local user from the Administrators group, run

Remove-LocalGroupMember -Group "Administrators" -Member $env:USERNAME
