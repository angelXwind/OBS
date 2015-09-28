@echo off
copy ..\x64\release\OBS.exe .\
copy ..\ObsVCE\x64\release\ObsVCE.dll .\
copy ..\ObsVCEAMF\x64\release\ObsVCEAMF.dll .\
copy ..\x64\release\ObsVCEMFT.dll .\
copy "%UserProfile%\AMD Media SDK\1.1\dll\amf\x86_64\Release\vs12\amf-core-windesktop64.dll" .\
copy "%UserProfile%\AMD Media SDK\1.1\dll\amf\x86_64\Release\vs12\amf-component-vce-windesktop64.dll" .\
copy ..\obsapi\x64\release\obsapi.dll .\
copy ..\DShowPlugin\x64\Release\DShowPlugin.dll .\plugins
copy ..\GraphicsCapture\x64\Release\GraphicsCapture.dll .\plugins
copy ..\GraphicsCapture\GraphicsCaptureHook\Release\GraphicsCaptureHook.dll .\plugins\graphicscapture
copy ..\GraphicsCapture\GraphicsCaptureHook\x64\Release\GraphicsCaptureHook64.dll .\plugins\graphicscapture
copy ..\noisegate\x64\release\noisegate.dll .\plugins
copy ..\psvplugin\x64\release\psvplugin.dll .\plugins
copy ..\scenesw\x64\release\scenesw.dll .\plugins
copy ..\x264\libs\64bit\libx264-146.dll .\
copy ..\injectHelper\Release\injectHelper.exe .\plugins\graphicscapture
copy ..\injectHelper\x64\Release\injectHelper64.exe .\plugins\graphicscapture
copy ..\ObsNvenc\x64\Release\ObsNvenc.dll .\
