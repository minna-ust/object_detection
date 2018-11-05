echo cmd.bat path : %~dp0
dir    %~dp0\*.proto /B > list.txt              

for  /f  %%a  in  (list.txt)  do (
echo %%a
protoc object_detection/protos/%%a --python_out=.
)