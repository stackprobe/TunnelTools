IF NOT EXIST TunnelTools_is_here.sig GOTO END
CLS
rem リリースして qrum します。
PAUSE

CALL ff
cx **

CD /D %~dp0.

IF NOT EXIST TunnelTools_is_here.sig GOTO END

CALL Release.bat /-P

MOVE out\TunnelTools.zip S:\リリース物\.

START "" /B /WAIT /DC:\home\bat syncRev

CALL qrumauto rel

rem **** AUTO RELEASE COMPLETED ****

:END
