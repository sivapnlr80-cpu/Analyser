# Deployment Guide - File Processor Application

## Overview
This guide will help you deploy the Schedule & Annexure File Processor application on Windows systems.

## Deployment Options

### Option 1: Python Script Deployment (Recommended for Development)

#### Requirements
- Python 3.8 or higher
- pip (Python package installer)

#### Steps

1. **Copy Application Files**
   Copy the following files to the target machine:
   ```
   file_processor.py
   requirements.txt
   README.md
   ```

2. **Install Python**
   - Download Python from https://www.python.org/downloads/
   - During installation, check "Add Python to PATH"
   - Verify installation: `python --version`

3. **Install Dependencies**
   ```bash
   cd [application_folder]
   pip install -r requirements.txt
   ```

4. **Run Application**
   ```bash
   python file_processor.py
   ```

---

### Option 2: Standalone Executable (Recommended for End Users)

Create a standalone `.exe` file that doesn't require Python installation.

#### Steps to Create Executable

1. **Install PyInstaller**
   ```bash
   pip install pyinstaller
   ```

2. **Create Executable**
   ```bash
   pyinstaller --onefile --windowed --name "Audit_Index_Processor" --icon=app_icon.ico file_processor.py
   ```

   Options explained:
   - `--onefile`: Creates a single executable file
   - `--windowed`: No console window (GUI only)
   - `--name`: Name of the executable
   - `--icon`: Application icon (optional)

3. **Locate Executable**
   The executable will be in the `dist` folder:
   ```
   dist/Audit_Index_Processor.exe
   ```

4. **Distribute**
   - Copy `Audit_Index_Processor.exe` to target machines
   - No Python installation required
   - Double-click to run

---

### Option 3: Installer Package (Professional Deployment)

Create a Windows installer for easy distribution.

#### Using Inno Setup

1. **Download Inno Setup**
   - Download from: https://jrsoftware.org/isdl.php
   - Install on your system

2. **Create Installer Script** (save as `installer_script.iss`)
   ```iss
   [Setup]
   AppName=Audit Index Processor
   AppVersion=1.0
   DefaultDirName={pf}\AuditIndexProcessor
   DefaultGroupName=Audit Index Processor
   OutputDir=installer_output
   OutputBaseFilename=AuditIndexProcessor_Setup
   Compression=lzma
   SolidCompression=yes

   [Files]
   Source: "dist\Audit_Index_Processor.exe"; DestDir: "{app}"
   Source: "README.md"; DestDir: "{app}"; Flags: isreadme

   [Icons]
   Name: "{group}\Audit Index Processor"; Filename: "{app}\Audit_Index_Processor.exe"
   Name: "{commondesktop}\Audit Index Processor"; Filename: "{app}\Audit_Index_Processor.exe"

   [Run]
   Filename: "{app}\Audit_Index_Processor.exe"; Description: "Launch Audit Index Processor"; Flags: postinstall nowait skipifsilent
   ```

3. **Compile Installer**
   - Open Inno Setup
   - Load `installer_script.iss`
   - Click "Compile"
   - Installer will be created in `installer_output` folder

---

## Deployment Checklist

### Pre-Deployment
- [ ] Test application on development machine
- [ ] Verify all dependencies are in `requirements.txt`
- [ ] Update version number in code/documentation
- [ ] Test with sample ZIP files
- [ ] Review README.md for accuracy

### For Script Deployment
- [ ] Copy `file_processor.py`
- [ ] Copy `requirements.txt`
- [ ] Copy `README.md`
- [ ] Provide installation instructions

### For Executable Deployment
- [ ] Create executable with PyInstaller
- [ ] Test executable on clean machine (without Python)
- [ ] Verify file dialogs work correctly
- [ ] Test report generation
- [ ] Check temp file cleanup

### For Installer Deployment
- [ ] Create executable
- [ ] Create installer with Inno Setup
- [ ] Test installer on clean machine
- [ ] Verify Start Menu shortcuts
- [ ] Verify Desktop shortcut
- [ ] Test uninstaller

---

## Quick Deployment Commands

### Create Executable (One Command)
```bash
# Navigate to project folder
cd "c:\Users\Rasool\OneDrive\Documents\Projects Python\CascadeProjects\2048"

# Install PyInstaller
pip install pyinstaller

# Create executable
pyinstaller --onefile --windowed --name "Audit_Index_Processor" file_processor.py

# Executable will be in: dist\Audit_Index_Processor.exe
```

---

## Distribution Package Structure

```
AuditIndexProcessor_v1.0/
├── Audit_Index_Processor.exe    (Standalone executable)
├── README.md                     (User documentation)
├── DEPLOYMENT_GUIDE.md          (This file)
└── sample_files/                (Optional: Sample test files)
```

---

## System Requirements

### Minimum Requirements
- **OS**: Windows 7 or higher
- **RAM**: 2 GB
- **Disk Space**: 50 MB
- **Display**: 1024x768 resolution

### Recommended Requirements
- **OS**: Windows 10 or higher
- **RAM**: 4 GB or more
- **Disk Space**: 100 MB
- **Display**: 1920x1080 resolution

---

## Troubleshooting Deployment Issues

### Issue: "Python not found"
**Solution**: Install Python or use standalone executable

### Issue: "Module not found" errors
**Solution**: Run `pip install -r requirements.txt`

### Issue: Executable doesn't run
**Solution**: 
- Check Windows Defender/Antivirus
- Run as Administrator
- Rebuild with `--debug` flag

### Issue: File dialogs don't work in executable
**Solution**: Use `--windowed` flag with PyInstaller

---

## Security Considerations

1. **Antivirus False Positives**
   - PyInstaller executables may trigger antivirus warnings
   - Submit to antivirus vendors for whitelisting
   - Sign executable with code signing certificate (recommended)

2. **Code Signing** (Optional but Recommended)
   - Obtain code signing certificate
   - Sign executable: `signtool sign /f certificate.pfx /p password Audit_Index_Processor.exe`

3. **User Permissions**
   - Application requires read/write access to temp folder
   - No admin privileges required

---

## Updates and Maintenance

### Version Control
- Update version number in code
- Update CHANGELOG.md
- Tag releases in Git

### Distribution
- Host on company server/network drive
- Or use cloud storage (Google Drive, OneDrive)
- Provide download link to users

---

## Support

For deployment issues, check:
1. Python version compatibility
2. All dependencies installed
3. File permissions
4. Antivirus settings
5. Windows compatibility mode

---

## License and Credits

Application: Schedule & Annexure File Processor
Version: 1.0
Created: 2025
