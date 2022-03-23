$a = @{Expression={$_.Name};Label="Service Name";width=25}, `
@{Expression={$_.DisplayName};Label="Display Name";width=50}, `
@{Expression={$_.Status};Label="Status";width=15}, `
@{Expression={$_.StartType};Label="Start Up Type";width=15}

while ($true)
{
		write-host 'Horizon Connection Server and VMware Tools Services'`n -ForegroundColor Yellow -BackgroundColor Black
		#get-service VGAuthService,wsdct,VMBlastSG,wsbroker,wsnm,wsmsgbus,PCOIPSG,WSSH,wstunnel,wstomcat,vmvss,VM3DService,VMTools,ADAM_VMwareVDMDS,ADAM_VMwareVDMDSG | Format-Table
		Get-Service -Displayname "*VMware*" | Format-Table $a
		write-host `n
		For ($i=5; $i -gt 0; $i–-)
		{
			write-host "Refreshing in..." $i -ForegroundColor Yellow -BackgroundColor Black
			Start-Sleep 1
		}
		
cls
}
