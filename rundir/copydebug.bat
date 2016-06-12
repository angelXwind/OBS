@echo off
copy ..\debug\obs.exe .\
copy ..\ObsVCE\debug\ObsVCE.dll .\
copy ..\ObsVCEAMF\debug\ObsVCEAMF.dll .\
copy ..\debug\ObsVCEMFT.dll .\
copy "%UserProfile%\AMD Media SDK\1.1\dll\amf\x86\debug\vs12\amf-core-windesktop32.dll" .\
copy "%UserProfile%\AMD Media SDK\1.1\dll\amf\x86\debug\vs12\amf-component-vce-windesktop32.dll" .\
copy ..\obsapi\debug\obsapi.dll .\
copy ..\dshowplugin\debug\dshowplugin.dll .\plugins
copy ..\graphicscapture\debug\graphicscapture.dll .\plugins
copy ..\graphicscapture\graphicscapturehook\debug\graphicscapturehook.dll .\plugins\graphicscapture
copy ..\graphicscapture\graphicscapturehook\x64\debug\graphicscapturehook64.dll .\plugins\graphicscapture
copy ..\noisegate\debug\noisegate.dll .\plugins
copy ..\psvplugin\debug\psvplugin.dll .\plugins
copy ..\scenesw\debug\scenesw.dll .\plugins
copy ..\x264\libs\32bit\libx264-146.dll .\
copy ..\injectHelper\Release\injectHelper.exe .\plugins\graphicscapture
copy ..\injectHelper\x64\Release\injectHelper64.exe .\plugins\graphicscapture
copy ..\ObsNvenc\Debug\ObsNvenc.dll .\
