# get third party libraries
cd shaderc\third_party
git clone https://github.com/google/googletest.git
git clone https://github.com/google/glslang.git
git clone https://github.com/KhronosGroup/SPIRV-Tools.git spirv-tools
git clone https://github.com/KhronosGroup/SPIRV-Headers.git spirv-tools/external/spirv-headers
cd ..\..


# MSBuild workaround
$Env:PATH=$Env:PATH+";C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\"

# cmake VS2015 x86
mkdir shaderc_v140_x86
cd shaderc_v140_x86
cmake -G "Visual Studio 14"  -DSHADERC_ENABLE_SHARED_CRT=ON -DBUILD_TESTING=OFF -DSPIRV_SKIP_TESTS=ON ..\shaderc
cmake --build . --config release
cmake --build . --config debug
cd ..

# cmake VS2015 x64
mkdir shaderc_v140_x64
cd shaderc_v140_x64
cmake -G "Visual Studio 14 Win64" -DSHADERC_ENABLE_SHARED_CRT=ON -DBUILD_TESTING=OFF -DSPIRV_SKIP_TESTS=ON ..\shaderc 
cmake --build . --config release
cmake --build . --config debug
cd ..

# cmake VS2017 x86
mkdir shaderc_v141_x86
cd shaderc_v141_x86
cmake -G "Visual Studio 15" -DSHADERC_ENABLE_SHARED_CRT=ON -DBUILD_TESTING=OFF -DSPIRV_SKIP_TESTS=ON ..\shaderc 
cmake --build . --config release
cmake --build . --config debug
cd ..

# cmake VS2017 x64
mkdir shaderc_v141_x64
cd shaderc_v141_x64
cmake -G "Visual Studio 15 Win64" -DSHADERC_ENABLE_SHARED_CRT=ON -DBUILD_TESTING=OFF -DSPIRV_SKIP_TESTS=ON ..\shaderc 
cmake --build . --config release
cmake --build . --config debug
cd ..
