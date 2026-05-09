#!/bin/bash
# ============================================================
#  Mallika Gera — Portfolio Full Setup Script
#  Run this once in Git Bash — does everything automatically
# ============================================================

cd "/c/Users/mallika/OneDrive - University of Wollongong/Desktop/portfolio"

# ── Create folder structure ───────────────────────────────
mkdir -p financial_analysis market_sizing pdf_scraper dashboard

# ── Move existing files into financial_analysis ───────────
mv "Portfolio_Risk_&_Return_Analyzer.ipynb" financial_analysis/ 2>/dev/null
mv "DCF_+_Comparable_Company_Valuation_Model.ipynb" financial_analysis/ 2>/dev/null
mv "STRATEGIC_MARKET_SIZING_MODEL.ipynb" financial_analysis/ 2>/dev/null
mv "market_sizing_calculator.ipynb" financial_analysis/ 2>/dev/null

# ── Move Python files if they exist ──────────────────────
mv "market_sizing.py" market_sizing/ 2>/dev/null
mv "pdf_scraper.py" pdf_scraper/ 2>/dev/null
mv "dashboard.py" dashboard/ 2>/dev/null

# ── Write main README ─────────────────────────────────────
cat > README.md << 'EOF'
# Mallika Gera — Portfolio

Strategy · Data · Finance — Building tools that turn complex market data into clear decisions.

---

## About Me

Analyst and developer at the intersection of financial strategy and data science.
I use Python, Jupyter, and structured thinking to build tools that solve real business problems —
the kind you would find on a McKinsey engagement or at a top investment firm.

- Based in Dubai, UAE / University of Wollongong
- Interests: Strategy Consulting · Financial Analysis · Data Analytics · FinTech
- Contact: mallikagera35@gmail.com

---

## Projects

### Financial Analysis

| Project | Description |
|---|---|
| [DCF + Comparable Company Valuation](./financial_analysis/) | Intrinsic value using DCF and trading multiples |
| [Portfolio Risk & Return Analyzer](./financial_analysis/) | Sharpe ratio, volatility, correlation analysis |
| [Strategic Market Sizing Model](./financial_analysis/) | McKinsey-style TAM/SAM/SOM with scenarios |
| [Market Sizing Calculator](./financial_analysis/) | Rapid market sizing for any industry |

### Python Tools

| Project | Description |
|---|---|
| [Market Sizing Calculator](./market_sizing/) | Top-down and bottom-up modeling with sensitivity analysis |
| [PDF Report Scraper](./pdf_scraper/) | Extracts metrics and tables from consulting PDFs |
| [Business KPI Dashboard](./dashboard/) | Multi-panel dashboard from any CSV |

### Web

| Project | Description |
|---|---|
| [Portfolio Site](./index.html) | Hand-coded personal portfolio — no templates |
| [Investment Tracker](./invtracker.html) | Investment tracking dashboard |
| [Consultant Tracker](./consultant-tracker.html) | Consulting project tracker |

---

## Tech Stack

Languages: Python · JavaScript · HTML/CSS

Data and Finance: Pandas · Matplotlib · Numpy · Jupyter

Strategy: Market Sizing · DCF Modeling · Portfolio Theory · Scenario Analysis

---

## Connect

- Email: mallikagera35@gmail.com
- GitHub: https://github.com/mallikagera35-bot
EOF

# ── Write financial_analysis README ──────────────────────
cat > financial_analysis/README.md << 'EOF'
# Financial Analysis Projects

A collection of investment-grade financial models built in Python (Jupyter Notebooks).
Each model tackles a real-world finance problem using data science techniques.

---

## Models

### DCF + Comparable Company Valuation Model
Intrinsic value estimation using Discounted Cash Flow analysis combined with
comparable company (trading multiples) analysis. Used to value public and private companies.

Skills: DCF modeling, WACC, terminal value, EV/EBITDA multiples

---

### Portfolio Risk & Return Analyzer
Quantitative portfolio analysis tool that calculates risk-adjusted returns,
Sharpe ratio, volatility, and correlation across a basket of assets.

Skills: Modern Portfolio Theory, Sharpe ratio, covariance matrices, Pandas

---

### Strategic Market Sizing Model
McKinsey-style TAM/SAM/SOM market sizing with scenario analysis.
Models addressable market from both top-down and bottom-up perspectives.

Skills: Market sizing, sensitivity analysis, scenario modeling

---

### Market Sizing Calculator
Interactive notebook for rapid market sizing across any industry vertical.

---

## How to Run

    pip install pandas matplotlib numpy jupyter
    jupyter notebook

Then open any .ipynb file.

---

Built by Mallika Gera — mallikagera35@gmail.com
EOF

# ── Write market_sizing README ────────────────────────────
cat > market_sizing/README.md << 'EOF'
# Market Sizing Calculator

McKinsey-style TAM/SAM/SOM modeling tool built in Python.
Runs both top-down and bottom-up models with a full sensitivity analysis table.

## How to Run

    python market_sizing.py

No dependencies needed beyond standard Python.
EOF

# ── Write pdf_scraper README ──────────────────────────────
cat > pdf_scraper/README.md << 'EOF'
# PDF Report Scraper

Extracts structured data from consulting-style PDF reports.
Pulls key metrics (revenue, EBITDA, growth %), section headers, and tables.
Exports results to CSV automatically.

## How to Run

    pip install pdfplumber pandas
    python pdf_scraper.py --demo
    python pdf_scraper.py --file yourreport.pdf
EOF

# ── Write dashboard README ────────────────────────────────
cat > dashboard/README.md << 'EOF'
# Business KPI Dashboard

Generates a multi-panel dark-mode business dashboard from any CSV file.
Covers revenue vs expenses, profit margin, customer growth, NPS, and churn.

## How to Run

    pip install pandas matplotlib
    python dashboard.py --demo
    python dashboard.py --file yourdata.csv
EOF

# ── Git add, commit, push ─────────────────────────────────
git add .
git commit -m "Restructure portfolio with clean folders and READMEs"
git push

echo ""
echo "Done! View your portfolio at:"
echo "https://github.com/mallikagera35-bot/Portfolio"
echo ""
