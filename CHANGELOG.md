# Changelog

All notable changes to the Audit Index Processor will be documented in this file.

## [1.0.0] - 2025-09-30

### Added
- Initial release of Audit Index Processor
- ZIP file upload and extraction functionality
- Society Name and Number input fields
- PDF file identification and processing
- Schedule verification (Schedule 2-21, omitting 1 and 22)
- Annexure verification (Annexure 2-12, omitting 1)
- Page-by-page total extraction from PDFs
- Grand Total/Total pattern matching
- Excel report generation with formatting
- Missing file detection and reporting
- Smart filtering to omit pages without totals
- Professional Excel output with:
  - Society name heading
  - Color-coded sections
  - Alternating row colors
  - Bordered cells
  - Proper column widths
- GUI with real-time processing log
- Temporary file cleanup
- Download functionality for generated reports

### Features
- Processes Schedule 2 to Schedule 21 (omits Schedule 1 and 22)
- Processes Annexure 2 to Annexure 12 (omits Annexure 1)
- Extracts financial totals: Opening Balance, Debit, Credit, Closing Balance
- Generates Excel reports (.xlsx format)
- User-friendly Tkinter GUI
- Cross-platform compatible (Windows focus)

### Technical Details
- Python 3.8+ compatible
- Dependencies: PyPDF2, openpyxl
- GUI Framework: Tkinter
- Report Format: Excel (.xlsx)

### Known Limitations
- Only processes PDF files
- Requires specific filename patterns for Schedule/Annexure identification
- Total extraction depends on "Grand Total" or "Total" keywords in PDFs
