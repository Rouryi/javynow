@if (0)==(0) echo off
pushd %UserProfile%\javynow
cls

for /f "tokens=1,2 delims=," %%a in ('cscript.exe //nologo //e:jscript "%~f0"^<javy.txt') do (
ffmpeg.exe -headers "User-Agent: Mozilla/5.0 (Linux; Android 5.1.1; HUAWEI KII-L22 Build/HUAWEIKII-L22) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.105 Mobile Safari/537.36" -i "%%a.m3u8" -c copy -bsf:a aac_adtstoasc "%%b.mp4"
)
goto :eof
@end
var StdIn=WScript.StdIn;
while (!StdIn.AtEndOfLine){
var s=StdIn.ReadLine();
if(!StdIn.AtEndOfLine) WScript.Echo(s+","+StdIn.ReadLine());
}

popd
pause
