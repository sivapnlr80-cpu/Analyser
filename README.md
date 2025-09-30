# File Processor - Schedule & Annexure Verifier

A Python application that processes ZIP files containing PDF documents, verifies the presence of required schedules and annexures, extracts financial totals, and generates a comprehensive PDF report.

## Features

1. **ZIP File Upload**: User-friendly GUI to upload ZIP files
2. **Automatic Extraction**: Extracts ZIP contents to temporary storage
3. **File Identification**: Identifies all PDF files in the archive
4. **Verification**: Checks for presence of:
   - Schedule 2 to Schedule 21 (Arabic numerals) - **Omits Schedule 1 and 22**
   - Annexure 2 to Annexure 12 (Arabic numerals) - **Omits Annexure 1**
5. **Total Extraction**: Extracts Grand Total/Total values from **each page** of every PDF including:
   - Page Number
   - Opening Balance
   - Debit
   - Credit
   - Closing Balance
6. **Smart Filtering**: 
   - Automatically omits **Schedule 1, Schedule 22, and Annexure 1** from processing
   - Omits pages that don't contain Grand Total/Total data
7. **Missing File Report**: Reports any missing schedules or annexures
8. **Excel Report Generation**: Creates a professional Excel report with all findings
9. **Download Report**: Save the generated report to your desired location

## Installation

1. Install Python 3.8 or higher

2. Install required dependencies:
```bash
pip install -r requirements.txt
```

## Usage

1. Run the application:
```bash
python file_processor.py
```

2. **Enter Society Information** (Step 1):
   - Society Name (e.g., "ABC Co-operative Housing Society")
   - Society Number (e.g., "12345")

3. **Select ZIP File** (Step 2): Click "Select ZIP File" to choose your ZIP archive containing PDF files

4. Click "Process Files" to start processing

5. Review the processing log in the application window

6. Click "Download Excel Report" to save the generated report

## Expected File Naming

The application looks for files containing these keywords (case-insensitive):

**Schedules (Arabic Numerals):**
- Schedule 2, Schedule 3, ..., Schedule 21 (**Schedule 1 and 22 are omitted**)
- Also accepts: Schedule-2, Schedule2, Sch 2, Sch-2, Schedule_2, Sch_2

**Annexures (Arabic Numerals):**
- Annexure 2, Annexure 3, ..., Annexure 12 (**Annexure 1 is omitted**)
- Also accepts: Annexure-2, Annexure2, Annex 2, Annex-2, Anx 2, Anx-2, Annexure_2, Anx_2

## Report Contents

The generated Excel report (saved as **Audit_Index_[timestamp].xlsx**) includes:

1. **Top Heading**: Society Name displayed prominently at the top of the first page
2. **Missing Files Section**: Lists any missing schedules or annexures
3. **File Details with Page-by-Page Totals**: For each PDF file (only files with totals):
   - Filename
   - Total number of pages
   - Number of pages with totals
   - **Detailed table showing totals for pages that contain them:**
     - Page number
     - Opening Balance
     - Debit amount
     - Credit amount
     - Closing Balance
   - **Note**: Pages without Grand Total/Total are automatically omitted from the report

## Technical Details

- **Language**: Python 3
- **GUI Framework**: Tkinter
- **PDF Reading**: PyPDF2
- **Excel Generation**: openpyxl
- **Temporary Storage**: Uses system temp directory with automatic cleanup

## Error Handling

The application handles:
- Invalid ZIP files
- Missing or corrupted PDF files
- PDF parsing errors
- File system errors

All errors are logged in the processing window and displayed to the user.

## Notes

- The application automatically cleans up temporary files after processing
- **Schedule 1, Schedule 22, and Annexure 1 are automatically omitted** from processing and reporting
- Total extraction uses pattern matching to find "Grand Total" or "Total" lines (excludes "Subtotal")
- Pages without totals are omitted from the report for cleaner output
- Only files with at least one page containing totals are shown in the report
- The report is timestamped for easy identification

## Support

For issues or questions, please check:
1. ZIP file is valid and contains PDF files
2. PDF files are not password-protected
3. File names contain the expected schedule/annexure identifiers
