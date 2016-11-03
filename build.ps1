# get third party libraries
cd shaderc\third_party
git clone https://github.com/google/googletest.git
git clone https://github.com/google/glslang.git
git clone https://github.com/KhronosGroup/SPIRV-Tools.git spirv-tools
git clone https://github.com/KhronosGroup/SPIRV-Headers.git spirv-tools/external/spirv-headers
cd ..\..

# cmake x86
mkdir shaderc_v140_x86
cd shaderc_v140_x86
cmake -G "Visual Studio 14" ..\shaderc -DSHADERC_ENABLE_SHARED_CRT:bool=true
cmake --build . --config release
cmake --build . --config debug
cd ..

# cmake x64
mkdir shaderc_v140_x64
cd shaderc_v140_x64
cmake -G "Visual Studio 14 Win64" ..\shaderc -DSHADERC_ENABLE_SHARED_CRT:bool=true
cmake --build . --config release
cmake --build . --config debug
cd ..

