@echo off
copy ..\x64\debug\obs.exe .\
copy ..\ObsVCE\x64\debug\ObsVCE.dll .\
copy ..\ObsVCEAMF\x64\debug\ObsVCEAMF.dll .\
copy ..\x64\debug\ObsVCEMFT.dll .\
copy "%UserProfile%\AMD Media SDK\1.1\dll\amf\x86_64\debug\vs12\amf-core-windesktop64.dll" .\
copy "%UserProfile%\AMD Media SDK\1.1\dll\amf\x86_64\debug\vs12\amf-component-vce-windesktop64.dll" .\
copy ..\obsapi\x64\debug\obsapi.dll .\
copy ..\dshowplugin\x64\debug\dshowplugin.dll .\plugins
copy ..\graphicscapture\x64\debug\graphicscapture.dll .\plugins
copy ..\graphicscapture\graphicscapturehook\debug\graphicscapturehook.dll .\plugins\graphicscapture
copy ..\graphicscapture\graphicscapturehook\x64\debug\graphicscapturehook64.dll .\plugins\graphicscapture
copy ..\noisegate\x64\debug\noisegate.dll .\plugins
copy ..\psvplugin\x64\debug\psvplugin.dll .\plugins
copy ..\scenesw\x64\debug\scenesw.dll .\plugins
copy ..\x264\libs\64bit\libx264-146.dll .\
copy ..\injectHelper\Release\injectHelper.exe .\plugins\graphicscapture
copy ..\injectHelper\x64\Release\injectHelper64.exe .\plugins\graphicscapture
copy ..\ObsNvenc\x64\Debug\ObsNvenc.dll .\
