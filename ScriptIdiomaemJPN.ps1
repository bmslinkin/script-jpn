$dir = "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2\packages\JPN2EN"

if(!(Test-Path -Path $dir )){
	New-Item -ItemType directory -Path $dir
	Write-Host "Pasta Criada"
    sleep(1)
	Write-Host " "
}
else
{
	Write-Host "Diretorio Ja Existente"
    sleep(1)}

clear

Write-Host "MUDE SEU IDIOMA NA STEAM PARA JAPONES AGORA" 
Write-Host " "
Write-Host "OBS> APERTE ENTER SOMENTE QUANDO O DOWNLOAD FOR CONCLUIDO"
Write-Host " "| Pause 

Get-ChildItem -Recurse -Path "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2\packages" -filter '*jpn*.pkg' | move-item -Force -Destination "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2\packages\JPN2EN"

clear

Write-Host " "
Write-Host "Japonificando arquivos"
sleep(2)
Write-Host " "

Get-ChildItem -Recurse -Path "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2\packages\JPN2EN" | rename-item -newname {$_.name -replace "jpn","en"}

clear

Write-Host "RETORNE SEU IDIOMA PARA INGLES AGORA" 
Write-Host " "
Write-Host "OBS> APERTE ENTER SOMENTE QUANDO O DOWNLOAD FOR CONCLUIDO (ESTE E MAIS RAPIDO)"
Write-Host " "| Pause 

Get-ChildItem -Recurse -Path "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2\packages\JPN2EN" | move-item -Force -Destination "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2\packages"

clear

Write-Host "SUCESSO" 

exit


