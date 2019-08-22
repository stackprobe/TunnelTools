C:\Factory\Tools\RDMD.exe /RC out

COPY C:\Factory\Labo\Socket\tunnel\boomClient.exe out
COPY C:\Factory\Labo\Socket\tunnel\boomServer.exe out
COPY C:\Factory\Labo\Socket\tunnel\crypTunnel.exe out
COPY C:\Factory\Labo\Socket\tunnel\GeTunnel.exe out
COPY C:\Factory\Labo\Socket\tunnel\httpMonitor.exe out
COPY C:\Factory\Labo\Socket\tunnel\httpMonParse.exe out
COPY C:\Factory\Labo\Socket\tunnel\HTTPPBodyFilter.exe out
COPY C:\Factory\Labo\Socket\tunnel\HTTPProxy.exe out
COPY C:\Factory\Labo\Socket\tunnel\HTTPPSimpleSaver.exe out
COPY C:\Factory\Labo\Socket\tunnel\multiTrack.exe out
COPY C:\Factory\Labo\Socket\tunnel\namedTrack.exe out
COPY C:\Factory\Labo\Socket\tunnel\PackMon.exe out
COPY C:\Factory\Labo\Socket\tunnel\revClient.exe out
COPY C:\Factory\Labo\Socket\tunnel\revServer.exe out
COPY C:\Factory\Labo\Socket\tunnel\Spoof.exe out
COPY C:\Factory\Labo\Socket\tunnel\Tunnel.exe out
COPY C:\Factory\Labo\Socket\tunnel\Tunnel2.exe out
COPY C:\Factory\Labo\Socket\tunnel\T2DivId.exe out
COPY C:\Factory\Labo\Socket\tunnel\T2DiHTTP.exe out
COPY C:\Factory\Tools\Lookup.exe out
COPY C:\Factory\Tools\mkcr.exe out

FOR %%E IN (out\*.exe) DO (
	C:\Factory\SubTools\EmbedConfig.exe --factory-dir-disabled "%%E"
)

COPY C:\Factory\Labo\Socket\tunnel\SmplProxy.bat out
COPY C:\Factory\Labo\Socket\tunnel\SmplProxyPrms.txt out
COPY C:\Factory\Resource\CP932.txt out
COPY C:\Factory\Resource\JIS0208.txt out

COPY AUTHORS out
COPY LICENSE out

C:\Factory\Tools\xcp.exe doc out
C:\Factory\Tools\DirFltr.exe /EF out

C:\Factory\SubTools\zip.exe /O out TunnelTools

PAUSE
