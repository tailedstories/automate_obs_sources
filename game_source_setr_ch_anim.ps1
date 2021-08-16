Add-Type -path 'C:\Users\moroz\Documents\WindowsPowerShell\obs-websocket-dotnet.dll'
$obs = new-object OBSWebsocketDotNet.OBSWebsocket
$obs.Connect("ws://127.0.0.1:4444","")
$obs.SetSourceSettings("Audition",'{
   "client_area": true,
   "compatibility": false,
   "cursor": true,
   "method": 0,
   "window": "Adobe Character Animator 2021:AdobeCharacterAnimator:Character Animator.exe"
}')