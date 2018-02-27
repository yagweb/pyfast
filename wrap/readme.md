FAST的编译说明

FAST v7 -> FAST v8 -> OpenFAST 
OpenFAST为社区而生，更容易编译。
http://openfast.readthedocs.io/en/latest/source/install/install_cmake_cygwin.html
官网的Windows编译，如果用VS，需要Intel Fortran；或者Cygwin；这里给出直接用gfortran编译的步骤。
vs项目要用x64，默认是x86，否则Python x64连接时报错找不到符号.

# 1 install dependencies： CMake，Lapack，MKL等
## 1.1 for Mingw-w64
    安装CMake, https://cmake.org/

    安装Lapack, git clone https://github.com/Reference-LAPACK/lapack.git 
    有的库需要lapacke，注意同时勾选BUILD_SHARED_LIBS, 和 LAPACKE
    cmake-gui时，注意选择gcc的版本。    
    
## 1.2 for cygwin 全部通过apt-cyg安装
    ## install choco
    choco install cygwin
    choco install apt-cyg  --source=cygwin
    ## apt-cyg choco install不成功就github手动下载放入bin，并下载它的依赖
    ## choco 安装失败的，不会有明显的提示，注意查看 窗口输出，安装成功的包的数量！！
    choco install wget lynx --source=cygwin
    ## launch cygwin, take care there is is a parameter -
        C:\Tools\cygwin\bin\mintty.exe -
    ## in cygwin
    apt-cyg install cmake cmake-doc cmake-gui cygwin-devel gcc-core gcc-fortran gcc-g++ git make makedepend
    apt-cyg install liblapack-devel libopenblas  openmpi

## 1.3 for linux 全部通过apt安装即可，比cygwin更简单

# 2 OpenFAST编译   
    
    # git clone openfast_source
    
    # compile in cygwin, 需要打开**cygwin自己的Terminal**
    
    cd openfast
    mkdir build
    cd build
    FC=gfortran cmake ../ -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=../bin
    make install  #exe and dlls will be put into the $(openfast)/bin folder, bin and lib

    ## IECWind/TurSim 修改和编译，
        修改源码，使得程序指定输入文件名称和输出目录
    
# 3 pyfast 编译
        