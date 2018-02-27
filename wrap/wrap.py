#!/usr/bin/env python3
"""
f90wrap: module中type类型的变量（Element），必须实现 Target声明，否则被忽略。
    FAST_Data中Turbine属性，要添加 target
yagweb
"""
from __future__ import print_function

import os
import copy
import pprint

from f90wrap import parser as fparse
from f90wrap import fortran
from f90wrap.sizeof_fortran_t import sizeof_fortran_t
from f90wrap import transform as tf

from f90wrap import f90wrapgen as fwrap
from f90wrap import pywrapgen as pywrap
from f90wrap.wrapper import main

def generate_wrapper(mod_name): 
    root = 'F:/cyPHM/openfast/'
    files = [
             'modules-local/fast-library/src/FAST_Library.f90',
             'build/modules-local/fast-library/FAST_Types.f90',
             'build/modules-local/aerodyn14/AeroDyn14_Types.f90',
             'build/modules-local/aerodyn/AeroDyn_Types.f90',
             'build/modules-local/aerodyn14/DWM_Types.f90',
             'build/modules-local/elastodyn/ElastoDyn_Types.f90',
             'build/modules-local/servodyn/ServoDyn_Types.f90',
#             'build/modules-local/inflowwind/InflowWind_Types.f90',
#             'build/modules-local/inflowwind/IfW_FFWind_Types.f90',
#             'build/modules-local/inflowwind/IfW_HHWind_Types.f90',
#             'build/modules-local/hydrodyn/HydroDyn_Types.f90',
#             'build/modules-local/subdyn/SubDyn_Types.f90',
#             'build/modules-ext/feamooring/FEAMooring_Types.f90',
#             'build/modules-ext/moordyn/MoorDyn_Types.f90',
#             'build/modules-ext/icefloe/IceFloe_Types.f90',
#             'build/modules-ext/icedyn/IceDyn_Types.f90'
            ]
    files = [root+bb for bb in files]
      
    import sys
    sys.argv.extend(files)
    sys.argv.extend(["-m", mod_name])
    sys.argv.extend(["--fdest", "tmp"])
    sys.argv.extend(["--pydest", "."])
    sys.argv.extend(["-p", "w_"])
    sys.argv.extend(["-k", "kind_map"])
    sys.argv.extend(["-r", "pruning_rules"])
    main()    
    
def compile_ext(mod_name):
    import platform
    import f90wrap
    import glob 
    root = os.path.abspath('../../openfast/')
    builder = os.path.join(os.path.dirname(f90wrap.__file__), "../scripts/f2py-f90wrap")
    mod_folder = os.path.join(root, 'build-mingw/ftnmods')
    f90flags ='--f90flags="-ffree-line-length-none "'
    sysstr = platform.system()
    if(sysstr =="Windows"):
        ccompiler = '--compiler=mingw32 '
        lib_names = ['openfastlib', 'openfast_prelib']
        lib_folder = os.path.join(root, 'build-mingw/bin/bin')
        files = " ".join(glob.glob('tmp/w_*.f90')) #windows cmd不支持通配符，Linuxshell会展开
        ldflags =''
    else:
        ccompiler = ''
        lib_names = ['openfastlib', 'openfast_prelib']
        lib_folder = os.path.join(root, 'build/bin/bin')
        files = 'tmp/w_*.f90'
        ldflags ='--ldflags="-Wl,-rpath=."'
#    cmd = "python f2py-f90wrap --fcompiler=gfortran "+ \
#    "--build-dir . -c -m _FAST -L. -I/home/jdx/git.repo/FAST/FAST/Compiling/Obj_lin64 " +\
#    '-lsrc -lFAST_Library_glin64 -L/home/jdx/git.repo/FAST/FAST/bin/ w_*.f90 --ldflags="-Wl,-rpath=."'
    cmd = "python {builder} --fcompiler=gfortran {ccompiler} "+ \
        "--build-dir . -c -m _{mod_name} -L. -I{mod_folder} " +\
        '{libs} -L{lib_folder} {files} {f90flags} {ldflags}'
    cmd = cmd.format(
        builder = builder, 
        ccompiler = ccompiler,
        mod_name = mod_name,
        mod_folder = mod_folder, 
        libs = ' '.join(['-l'+lib_name for lib_name in lib_names]), 
        lib_folder = lib_folder,
        files = files,
        f90flags = f90flags,
        ldflags = ldflags,
    )
#    print(cmd)
#    os.system('~/anaconda3/bin/python -v')
    os.system(cmd)
    
if __name__ == "__main__":
    mod_name = "openfast"
    generate_wrapper(mod_name)  #生成源文件
    compile_ext(mod_name)#连接
    print('end')