# OpenCV-python + freetype2

![demo](demo.png)

[opencv-python](https://github.com/opencv/opencv-python/tree/62) によるfreetype2追加ビルド.

freetype2によるputText多言語対応

[cv::freetype::FreeType2](https://docs.opencv.org/4.5.5/d9/dfa/classcv_1_1freetype_1_1FreeType2.html)


## ビルド環境

| name          | version    |
|---------------|------------|
| Windows       | 11         |
| Visual Studio | 19         |
| cmake         | 3.20.0     |
| miniconda     | 4.10.3     |
| python        | 3.8.12     |
| opencv-python | 4.5.5.62   |
| freetype      | 2.11.1     |
| harfbuzz      | 3.2.0      |
| vcpkg         | 2022.02.23 |

---------------------------

## Build

`git clone https://github.com/OhkuboSGMS/opencv-python-freetype2`

`build.bat`

デフォルトでは`C:\opencv-4.5.5.62-build`にビルドします.

ビルドが成功後の成果物は`C:\opencv-4.5.5.62-build\opencv-python\opencv_contrib_python-4.5.5.62-cp38-cp38-win_amd64.whl`
に出力されます．

## Install

`pip install opencv_contrib_python-4.5.5.62-cp38-cp38-win_amd64.whl`

## Run Demo
`python demo.py`

## cv2.getBuildInformation()
```
General configuration for OpenCV 4.5.5 =====================================
  Version control:               4.5.5

  Extra modules:
    Location (extra):            C:/Users/ookubo/AppData/Local/Temp/pip-req-build-tebpmbxg/opencv_contrib/modules
    Version control (extra):     4.5.5-dirty

  Platform:
    Timestamp:                   2022-03-12T15:22:15Z
    Host:                        Windows 10.0.19044 AMD64
    CMake:                       3.22.2
    CMake generator:             Visual Studio 16 2019
    CMake build tool:            C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/MSBuild/Current/Bin/MSBuild.exe
    MSVC:                        1929
    Configuration:               Debug Release

  CPU/HW features:
    Baseline:                    SSE SSE2 SSE3
      requested:                 SSE3
    Dispatched code generation:  SSE4_1 SSE4_2 FP16 AVX AVX2 AVX512_SKX
      requested:                 SSE4_1 SSE4_2 AVX FP16 AVX2 AVX512_SKX
      SSE4_1 (16 files):         + SSSE3 SSE4_1
      SSE4_2 (1 files):          + SSSE3 SSE4_1 POPCNT SSE4_2
      FP16 (0 files):            + SSSE3 SSE4_1 POPCNT SSE4_2 FP16 AVX
      AVX (4 files):             + SSSE3 SSE4_1 POPCNT SSE4_2 AVX
      AVX2 (31 files):           + SSSE3 SSE4_1 POPCNT SSE4_2 FP16 FMA3 AVX AVX2
      AVX512_SKX (5 files):      + SSSE3 SSE4_1 POPCNT SSE4_2 FP16 FMA3 AVX AVX2 AVX_512F AVX512_COMMON AVX512_SKX

  C/C++:
    Built as dynamic libs?:      NO
    C++ standard:                11
    C++ Compiler:                C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/bin/Hostx64/x64/cl.exe  (ver 19.29.30140.0)
    C++ flags (Release):         /DWIN32 /D_WINDOWS /W4 /GR  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise     /EHa /wd4127 /wd4251 /wd4324 /wd4275 /wd4512 /wd4589 /
MP  /MT /O2 /Ob2 /DNDEBUG
    C++ flags (Debug):           /DWIN32 /D_WINDOWS /W4 /GR  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise     /EHa /wd4127 /wd4251 /wd4324 /wd4275 /wd4512 /wd4589 /
MP  /MTd /Zi /Ob0 /Od /RTC1
    C Compiler:                  C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/bin/Hostx64/x64/cl.exe
    C flags (Release):           /DWIN32 /D_WINDOWS /W3  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise     /MP   /MT /O2 /Ob2 /DNDEBUG
    C flags (Debug):             /DWIN32 /D_WINDOWS /W3  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise     /MP /MTd /Zi /Ob0 /Od /RTC1
    Linker flags (Release):      /machine:x64  /NODEFAULTLIB:atlthunk.lib /INCREMENTAL:NO  /NODEFAULTLIB:libcmtd.lib /NODEFAULTLIB:libcpmtd.lib /NODEFAULTLIB:msvcrtd.lib
    Linker flags (Debug):        /machine:x64  /NODEFAULTLIB:atlthunk.lib /debug /INCREMENTAL  /NODEFAULTLIB:libcmt.lib /NODEFAULTLIB:libcpmt.lib /NODEFAULTLIB:msvcrt.lib
    ccache:                      NO
    Precompiled headers:         YES
    Extra dependencies:          wsock32 comctl32 gdi32 ole32 setupapi ws2_32 J:/opencv-4.5.5.62-build/vcpkg/installed/x64-windows/lib/harfbuzz.lib
    3rdparty dependencies:       libprotobuf ade ittnotify libjpeg-turbo libwebp libpng libtiff libopenjp2 IlmImf zlib quirc ippiw ippicv

  OpenCV modules:
    To be built:                 aruco barcode bgsegm bioinspired calib3d ccalib core datasets dnn dnn_objdetect dnn_superres dpm face features2d flann freetype fuzzy gapi hfs highgui img_hash imgcodecs imgproc intensity_transform l
ine_descriptor mcc ml objdetect optflow phase_unwrapping photo plot python3 quality rapid reg rgbd saliency shape stereo stitching structured_light superres surface_matching text tracking video videoio videostab wechat_qrcode xfeatu
res2d ximgproc xobjdetect xphoto
    Disabled:                    world
    Disabled by dependency:      -
    Unavailable:                 alphamat cudaarithm cudabgsegm cudacodec cudafeatures2d cudafilters cudaimgproc cudalegacy cudaobjdetect cudaoptflow cudastereo cudawarping cudev cvv hdf java julia matlab ovis python2 sfm ts viz    
    Applications:                -
    Documentation:               NO
    Non-free algorithms:         NO

  Windows RT support:            NO

  GUI:                           WIN32UI
    Win32 UI:                    YES
    VTK support:                 NO

  Media I/O:
    ZLib:                        build (ver 1.2.11)
    JPEG:                        build-libjpeg-turbo (ver 2.1.2-62)
    WEBP:                        build (ver encoder: 0x020f)
    PNG:                         build (ver 1.6.37)
    TIFF:                        build (ver 42 - 4.2.0)
    JPEG 2000:                   build (ver 2.4.0)
    OpenEXR:                     build (ver 2.3.0)
    HDR:                         YES
    SUNRASTER:                   YES
    PXM:                         YES
    PFM:                         YES

  Video I/O:
    DC1394:                      NO
    FFMPEG:                      YES (prebuilt binaries)
      avcodec:                   YES (58.134.100)
      avformat:                  YES (58.76.100)
      avutil:                    YES (56.70.100)
      swscale:                   YES (5.9.100)
      avresample:                YES (4.0.0)
    GStreamer:                   NO
    DirectShow:                  YES
    Media Foundation:            YES
      DXVA:                      YES

  Parallel framework:            Concurrency

  Trace:                         YES (with Intel ITT)

  Other third-party libraries:
    Intel IPP:                   2020.0.0 Gold [2020.0.0]
           at:                   C:/Users/ookubo/AppData/Local/Temp/pip-req-build-tebpmbxg/_skbuild/win-amd64-3.8/cmake-build/3rdparty/ippicv/ippicv_win/icv
    Intel IPP IW:                sources (2020.0.0)
              at:                C:/Users/ookubo/AppData/Local/Temp/pip-req-build-tebpmbxg/_skbuild/win-amd64-3.8/cmake-build/3rdparty/ippicv/ippicv_win/iw
    Lapack:                      NO
    Eigen:                       NO
    Custom HAL:                  NO
    Protobuf:                    build (3.19.1)

  OpenCL:                        YES (NVD3D11)
    Include path:                C:/Users/ookubo/AppData/Local/Temp/pip-req-build-tebpmbxg/opencv/3rdparty/include/opencl/1.2
    Link libraries:              Dynamic load

  Python 3:
    Interpreter:                 C:/Users/ookubo/miniconda3/envs/'build_opencv_python_4.5.5.62'/python.exe (ver 3.8.12)
    Libraries:                   C:/Users/ookubo/miniconda3/envs/'build_opencv_python_4.5.5.62'/libs/python38.lib (ver 3.8.12)
    numpy:                       C:/Users/ookubo/AppData/Local/Temp/pip-build-env-ssf90mxq/overlay/Lib/site-packages/numpy/core/include (ver 1.17.3)
    install path:                python/cv2/python-3

  Python (for build):            C:/Users/ookubo/miniconda3/envs/'build_opencv_python_4.5.5.62'/python.exe

  Java:
    ant:                         NO
    JNI:                         C:/Program Files/Java/jdk-16/include C:/Program Files/Java/jdk-16/include/win32 C:/Program Files/Java/jdk-16/include
    Java wrappers:               NO
    Java tests:                  NO

  Install to:                    C:/Users/ookubo/AppData/Local/Temp/pip-req-build-tebpmbxg/_skbuild/win-amd64-3.8/cmake-install
-----------------------------------------------------------------


```
