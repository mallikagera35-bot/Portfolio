# PDF Report Scraper

Extracts structured data from consulting-style PDF reports.
Pulls key metrics (revenue, EBITDA, growth %), section headers, and tables.
Exports results to CSV automatically.

## How to Run

    pip install pdfplumber pandas
    python pdf_scraper.py --demo
    python pdf_scraper.py --file yourreport.pdf
