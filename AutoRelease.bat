IF NOT EXIST TunnelTools_is_here.sig GOTO END
CLS
rem �����[�X���� qrum ���܂��B
PAUSE

CALL ff
cx **

CD /D %~dp0.

IF NOT EXIST TunnelTools_is_here.sig GOTO END

CALL Release.bat /-P

MOVE out\TunnelTools.zip S:\�����[�X��\.

START "" /B /WAIT /DC:\home\bat syncRev

CALL qrumauto rel

rem **** AUTO RELEASE COMPLETED ****

:END
