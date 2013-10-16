xcopy ..\dbl\output\reports .\pages\reports\ /SEIQ /Y
md .\stats\
copy ..\dbl\output\*.csv .\stats\

tinker --build
