New-LocalGroup -Name "Trabajadores"
New-LocalGroup -Name "Responsables"


$passT1 = ConvertTo-SecureString "trabajador" -AsPlainText -Force
New-LocalUser -Name "Trabajador1" -Password $passT1 -AccountExpires (Get-Date).AddYears(1)
Add-LocalGroupMember -Group "Trabajadores" -Member "Trabajador1"

$passT2 = ConvertTo-SecureString "trabajador" -AsPlainText -Force
New-LocalUser -Name "Trabajador2" -Password $passT2 -AccountExpires (Get-Date).AddYears(1)
Add-LocalGroupMember -Group "Trabajadores" -Member "Trabajador2"

$passT3 = ConvertTo-SecureString "trabajador" -AsPlainText -Force
New-LocalUser -Name "Trabajador3" -Password $passT3 -AccountExpires (Get-Date).AddYears(1)
Add-LocalGroupMember -Group "Trabajadores" -Member "Trabajador3"

$passT4 = ConvertTo-SecureString "trabajador" -AsPlainText -Force
New-LocalUser -Name "Trabajador4" -Password $passT4 -AccountExpires (Get-Date).AddYears(1)
Add-LocalGroupMember -Group "Trabajadores" -Member "Trabajador4"

$passT5 = ConvertTo-SecureString "trabajador" -AsPlainText -Force
New-LocalUser -Name "Trabajador5" -Password $passT5 -AccountExpires (Get-Date).AddYears(1)
Add-LocalGroupMember -Group "Trabajadores" -Member "Trabajador5"

$passR1 = ConvertTo-SecureString "responsable" -AsPlainText -Force
New-LocalUser -Name "Responsable1" -Password $passR1 
Add-LocalGroupMember -Group "Responsables" -Member "Responsable1"

$passR2 = ConvertTo-SecureString "responsable" -AsPlainText -Force
New-LocalUser -Name "Responsable2" -Password $passR2 
Add-LocalGroupMember -Group "Responsables" -Member "Responsable2"


$passInf = ConvertTo-SecureString "informatico" -AsPlainText -Force
New-LocalUser -Name "Informatico" -Password $passInf 
Set-LocalUser -Name "Informatico" -PasswordNeverExpires $true
Add-LocalGroupMember -Group "Administradores" -Member "Informatico"


$passNU = ConvertTo-SecureString "nuevo_usuario" -AsPlainText -Force
New-LocalUser -Name "nuevo_usuario" -Password $passNU

