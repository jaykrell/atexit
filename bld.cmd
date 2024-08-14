call \clamd64.cmd cl /Z7 /c /MD native_dll.cpp || goto :eof
call \clamd64.cmd cl /Z7 /LD /clr /MD managed_dll.cpp D:\nugets\Microsoft.Internal.Sql.NetFxSDK.4.8.1.1\lib\net481\Lib\um\x64\mscoree.lib /link /noentry native_dll.obj || goto :eof
call \clamd64.cmd cl /Z7 /MD native_main.cpp managed_dll.lib || goto :eof
