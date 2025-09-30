@echo off
echo ========================================
echo  Audit Index Processor - Build Script
echo ========================================
echo.

echo Step 1: Installing PyInstaller...
pip install pyinstaller
echo.

echo Step 2: Creating executable...
pyinstaller --onefile --windowed --name "Audit_Index_Processor" file_processor.py
echo.

echo ========================================
echo Build Complete!
echo ========================================
echo.
echo Executable location: dist\Audit_Index_Processor.exe
echo.
echo You can now distribute the executable file.
echo.
pause
