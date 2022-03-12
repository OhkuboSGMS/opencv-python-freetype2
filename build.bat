@echo off
setlocal
set DISK=C
set BUILD=%DISK%:\opencv-4.5.5.62-build
echo Build @ %BUILD%
set ENV_NAME='build_opencv_python_4.5.5.62'
set CWD=%CD%
echo %CWD%
call conda --version
call cmake --version

rem create build directory
mkdir %BUILD% > NUL 2>&1
cd /d %BUILD%

rem install vcpkg
call git clone https://github.com/microsoft/vcpkg.git -b 2022.02.23
call .\vcpkg\bootstrap-vcpkg.bat
cd vcpkg
rem install freetype harfbuzz
.\vcpkg.exe install freetype:x64-windows
.\vcpkg.exe install harfbuzz:x64-windows

rem setup opencv-python
cd ..
git clone --recursive https://github.com/opencv/opencv-python.git
cd opencv-python
git checkout -b 4.5.5.62 refs/tags/62

rem fix freetype CMakeLists.txt setup.py
cd  /d %CWD%
copy CMakeLists.txt %BUILD%\opencv-python\opencv_contrib\modules\freetype\CMakeLists.txt
copy setup.py %BUILD%\opencv-python\setup.py

cd /d %BUILD%
rem copy freetype dlls
copy vcpkg\installed\x64-windows\bin\*.dll opencv-python\cv2 /Y

cd opencv-python
rem create conda env
call conda create -n %ENV_NAME% python=3.8 -y
call conda activate %ENV_NAME%
set CMAKE_ARGS='-G=Visual Studio 16 2019' '-DWITH_FREETYPE=ON' '-DCMAKE_TOOLCHAIN_FILE=%BUILD%\vcpkg\scripts\buildsystems\vcpkg.cmake'
set ENABLE_CONTRIB=1
rem start build
call pip wheel . --verbose

call conda deactivate 
call conda remove -n %ENV_NAME% --all -y
cd /d %CWD%
endlocal