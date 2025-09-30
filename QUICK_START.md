# 🚀 Quick Start Guide - Audit Index Processor

## For End Users (Non-Technical)

### Step 1: Get the Application
- Locate the file: **Audit_Index_Processor.exe**
- Copy it to your computer (Desktop or Documents folder)

### Step 2: Run the Application
- **Double-click** on `Audit_Index_Processor.exe`
- If Windows shows a security warning:
  - Click **"More info"**
  - Click **"Run anyway"**

### Step 3: Enter Society Details
- **Society Name:** Type the full name (e.g., "ABC Housing Society")
- **Society Number:** Type the number (optional)

### Step 4: Select Your ZIP File
- Click **"Select ZIP File"** button
- Browse to your ZIP file containing PDF documents
- Click **"Open"**

### Step 5: Process Files
- Click **"Process Files"** button
- Wait while the application:
  - ✓ Extracts files
  - ✓ Identifies schedules and annexures
  - ✓ Extracts financial totals
  - ✓ Generates report

### Step 6: Download Report
- Click **"Download Excel Report"** button
- Choose where to save the file
- Click **"Save"**
- Open the Excel file to view your report

---

## 📊 What the Report Contains

Your Excel report will show:
- **Society Name** at the top
- **Missing Files** (if any)
- **File Details** for each schedule/annexure:
  - Filename
  - Page numbers
  - Opening Balance
  - Debit amounts
  - Credit amounts
  - Closing Balance

---

## ⚡ Tips for Best Results

### ZIP File Preparation
- ✅ Include all Schedule and Annexure PDF files
- ✅ Name files clearly (e.g., "Schedule 2.pdf", "Annexure 3.pdf")
- ✅ Ensure PDFs are not password-protected

### Expected Files
The application looks for:
- **Schedules:** 2, 3, 4, ..., 21 (omits 1 and 22)
- **Annexures:** 2, 3, 4, ..., 12 (omits 1)

### File Naming Examples
✅ Good names:
- Schedule 2.pdf
- Schedule-5.pdf
- Annexure 3.pdf
- Annexure-10.pdf

❌ Avoid:
- Random names without keywords
- Schedule 1.pdf (automatically omitted)
- Schedule 22.pdf (automatically omitted)

---

## ❓ Common Questions

### Q: Do I need to install Python?
**A:** No! The executable includes everything needed.

### Q: Can I use this on multiple computers?
**A:** Yes! Just copy the .exe file to any Windows computer.

### Q: Where is the report saved?
**A:** You choose the location when you click "Download Excel Report".

### Q: What if some files are missing?
**A:** The report will list all missing schedules/annexures.

### Q: Can I edit the Excel report?
**A:** Yes! It's a standard Excel file that you can modify.

---

## 🆘 Need Help?

### Application Won't Start
1. Right-click → "Run as administrator"
2. Check if antivirus is blocking it
3. Try copying to a different folder

### Can't Select ZIP File
1. Make sure the file ends with .zip
2. Try extracting and re-zipping the files
3. Ensure you have read permissions

### Report Not Generating
1. Check if you have write permissions
2. Ensure there's enough disk space
3. Try saving to a different location

---

## 📞 Contact

For technical support, contact your IT department or system administrator.

---

## ✨ Enjoy Using Audit Index Processor!
