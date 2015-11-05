@ECHO OFF
IF EXIST "output\content\bundles" rmdir /s /q "output\content\bundles"
IF EXIST "output\content\metadata.store" del /q "output\content\metadata.store"
set ROOT=%~dp0
set INDIR=%ROOT%modBundleFiles
set OUTDIR=%ROOT%output\content\bundles
set METAOUT=%ROOT%output\content
cd "C:\Program Files (x86)\Witcher 3 Mod Tools\bin\x64"
start /b /wait "" "wcc_lite.exe" pack -dir=%INDIR% -outdir=%OUTDIR%
start /b /wait "" "wcc_lite.exe" metadatastore -path=%METAOUT%