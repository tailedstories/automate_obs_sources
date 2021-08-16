$x=0

While 1

   if WinActive("Adobe Character Animator 2021") And $x <> 1 Then
	  Run ( @ComSpec & " /c " & 'powershell.exe -ExecutionPolicy bypass D:\creative\obs\game_source_setr_ch_anim.ps1')
	  $x=1
   EndIf
   if WinActive("Adobe Audition") And $x <> 2 Then
	  Run( @ComSpec & " /c " & 'powershell.exe -ExecutionPolicy bypass D:\creative\obs\game_source_setr_audition.ps1')
	  $x=2
   EndIf
   if WinActive("Spyder (Python 3.8)") And $x <> 3 Then
	  Run( @ComSpec & " /c " & 'powershell.exe -ExecutionPolicy bypass D:\creative\obs\game_source_setr_spyder.ps1')
	  $x=3
   EndIf
   if WinActive("[Class:illustrator]") And $x <> 4 Then
	  Run( @ComSpec & " /c " & 'powershell.exe -ExecutionPolicy bypass D:\creative\obs\game_source_setr_illustrator.ps1')
	  $x=4
   EndIf
   Sleep(100)
WEnd