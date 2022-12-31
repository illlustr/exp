set f=forfiles /S /M
%f% *.pck /C "powershell /c Compress-Archive @file @fname.zip -update"