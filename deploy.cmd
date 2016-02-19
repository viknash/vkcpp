@echo off
pushd %~dp0
%CATALYST_ROOT%\tools\cmake\bin\cmake.exe -G "Visual Studio 14 2015"
devenv VkCppGenerator.sln /build Release
copy /Y Release\* .
VkCppGenerator.exe ..\Vulkan-Docs\src\spec\vk.xml
copy /Y vk_cpp.h vulkan\.
popd