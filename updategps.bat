@set drive=%1
@set "filepath=%drive%\PRIVATE\SONY\GPS"
@set "datfile=%filepath%\assistme.dat"
@set "md5file=%filepath%\assistme.md5"

@IF NOT EXIST "%filepath%" ( mkdir "%filepath%" )

@bitsadmin /transfer mydownloadjob /download /priority FOREGROUND "http://control.d-imaging.sony.co.jp/GPS/assistme.dat" "%datfile%"
@bitsadmin /transfer mydownloadjob /download /priority FOREGROUND "http://control.d-imaging.sony.co.jp/GPS/assistme.md5" "%md5file%"