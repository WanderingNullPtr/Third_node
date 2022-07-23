

::Clone ENIGMA
::cmd /c C:\msys64\msys2_shell.cmd -defterm -no-start -c "git clone https://github.com/enigma-dev/enigma-dev.git C:/enigma-dev"

::Download and install LGM


::Build emake
echo "Reached make stage"
mkdir test-harness-out
::cmd /c C:\msys64\msys2_shell.cmd -defterm -no-start -c "pacman -Sy --noconfirm --needed git make rsync mingw-w64-x86_64-toolchain mingw-w64-x86_64-boost mingw-w64-x86_64-pugixml mingw-w64-x86_64-rapidjson mingw-w64-x86_64-yaml-cpp mingw-w64-x86_64-grpc mingw-w64-x86_64-protobuf mingw-w64-x86_64-glm mingw-w64-x86_64-libpng mingw-w64-x86_64-re2 mingw-w64-x86_64-box2d mingw-w64-x86_64-libffi mingw-w64-x86_64-glew mingw-w64-x86_64-openal mingw-w64-x86_64-dumb mingw-w64-x86_64-alure mingw-w64-x86_64-libmodplug mingw-w64-x86_64-libvorbis mingw-w64-x86_64-libogg mingw-w64-x86_64-flac mingw-w64-x86_64-mpg123 mingw-w64-x86_64-libsndfile mingw-w64-x86_64-libgme mingw-w64-x86_64-SDL2 mingw-w64-x86_64-SDL2_mixer mingw-w64-x86_64-libepoxy"
cmd /c C:\msys64\msys2_shell.cmd -defterm -mingw64 -no-start -c "make all"
echo "End make stage"

::Build Installer
::"%TMP%\nsis-binary-7208-3\Bin\makensis" /V4 "C:/enigma-dev/enigma.nsi"

::Open LGM
::cmd /c C:\msys64\msys2_shell.cmd -defterm -mingw64 -no-start -c "cd C:/enigma-dev && ./LGM.exe"
