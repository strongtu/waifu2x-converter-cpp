nvcc -ccbin "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin" -I"C:\Program Files (x86)\Windows Kits\10\Include\10.0.10240.0\ucrt" -Xcompiler "/wd 4819" -arch=sm_20 -ptx -o ..\src\modelHandler_CUDA.ptx20 ..\src\modelHandler_CUDA.cu
nvcc -ccbin "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin" -I"C:\Program Files (x86)\Windows Kits\10\Include\10.0.10240.0\ucrt" -Xcompiler "/wd 4819" -arch=sm_30 -ptx -o ..\src\modelHandler_CUDA.ptx30 ..\src\modelHandler_CUDA.cu
x64\bin\conv ..\src\modelHandler_CUDA.ptx20 ..\src\modelHandler_CUDA.ptx20.h str
x64\bin\conv ..\src\modelHandler_CUDA.ptx30 ..\src\modelHandler_CUDA.ptx30.h str
x64\bin\conv ..\src\modelHandler_openCL.cl ..\src\modelHandler_openCL.cl.h str