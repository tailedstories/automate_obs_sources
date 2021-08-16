Import-Module OBS
Connect-obs -ip 127.0.0.1 -port 4444

While (1) {
	$i = Get-Random -Minimum 1 -Maximum 4

	if ($i -eq 1){
		if ($i -ne $ii){
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device" -Show $true
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device 2" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Webcam" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Color Source 2" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Browser 2" -Show $false
			
			Start-Sleep $(Get-Random -Minimum 25 -Maximum 35)
		}
	} elseif ($i -eq 2){
		if ($i -ne $ii){
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device 2" -Show $true
			Show-obsSource -SceneName "Scene" -SourceName "Webcam" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Color Source 2" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Browser 2" -Show $false
			
			Start-Sleep $(Get-Random -Minimum 25 -Maximum 35)
		}
	} elseif ($i -eq 3){
		if ($i -ne $ii){
			#motion captire
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device 2" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Webcam" -Show $true
			Show-obsSource -SceneName "Scene" -SourceName "Color Source 2" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Browser 2" -Show $false
			
			Start-Sleep $(Get-Random -Minimum 15 -Maximum 25)
		}
	} elseif ($i -eq 4){
		if ($i -ne $ii){
			#chad
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Video Capture Device 2" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Webcam" -Show $false
			Show-obsSource -SceneName "Scene" -SourceName "Color Source 2" -Show $true
			Show-obsSource -SceneName "Scene" -SourceName "Browser 2" -Show $true
			
			Start-Sleep $(Get-Random -Minimum 5 -Maximum 10)
		}
	}
	Write-Host $i " - " $ii
	$ii=$i
	#Start-Sleep $(Get-Random -Minimum 15 -Maximum 35)
}