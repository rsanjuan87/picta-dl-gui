# Qt5 in MSYS2 (MINGW64)

## Install Qt5 
```bash
$ pacman -Sy base-devel git mingw-w64-x86_64-toolchain mingw-w64-x86_64-qt5-static mingw-w64-x86_64-clang
```

### Install PyQt5
```bash
$ pacman -Sy mingw-w64-x86_64-python-pyqt5
```

# Artistic Style 
```bash
astyle --project --recursive *.cpp,*.h
```
