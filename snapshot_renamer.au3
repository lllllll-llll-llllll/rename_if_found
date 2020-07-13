#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>

$dir = "C:\Users\" & @USERNAME & "\Downloads\"
$original = $dir & "snapshot.jpg"
func renamed()
   return $dir & "YT " & @YDAY & "-" & @HOUR & @MIN & @SEC & ".jpg"
EndFunc

while 1
   sleep(1000)

   if FileExists($original) then
	  FileMove($original, renamed(), $FC_OVERWRITE)
   endif

WEnd

