# 🎓 GURU — Guided Understanding, Research and University Projects

> **"Find a Problem. Understand the Technology. Build a Solution."**

**GURU** is a full-stack project discovery, learning, and collaboration platform designed for engineering students across all levels. It bridges the gap between raw problem statements and working prototypes by providing beginner-friendly explanations, engineering domain taxonomies, hardware/software toolchains, 7-slide SIH presentation structures, and collaborator matchmaking.

---

## 🚀 Instant Quick Start

### 1. Direct Web Access
Open your browser to:
- **Web Application**: **[http://localhost:5000](http://localhost:5000)**
- **Standalone HTML Portal**: Open `index.html` directly in any web browser or navigate to `file:///home/rgukt/Documents/project/index.html`

### 2. Demo Credentials
| Role | Email / Username | Password | Access Privileges |
| :--- | :--- | :--- | :--- |
| **Student** | `student@guru.edu` | `Student@123` | Search 445+ problems, bookmark, submit problems, find collaborators, 7-slide generator |
| **Admin** | `admin@guru.edu` | `Admin@123` | Full Admin Dashboard, upload documents, review submissions, edit/publish projects |

### 3. One-Click Launcher Script
```bash
./start.sh
```

---

## 🏛️ System Features & 11 Core Pages

1. **Home Page (`/`)**:
   - Hero banner with global problem search.
   - Domain discovery cards (VLSI, IoT, Embedded, Cybersecurity, Robotics, etc.).
   - Academic & competition categories: *Hackathon (SIH)*, *Mini Project*, *Major Project*, *Research*.
   - 6-step "How GURU Works" student journey flow.

2. **Explore Projects (`/projects`)**:
   - Filterable catalogue of **445 verified engineering problems**.
   - Filters: Engineering Branch (ECE, CSE, Electrical), Domain, Subdomain, Difficulty, Purpose, Theme.
   - Sorting by relevance, title, newest, and difficulty.

3. **Project Details (`/projects/:id`)**:
   - Complete 30-item line-by-line breakdown.
   - Preserves **original verbatim problem statement** from official source documents.
   - Separate **Simple English Explanation** for beginners.
   - Required hardware components, software tools, prerequisites, and implementation roadmap.
   - **7-Slide Presentation Outline Generator** tailored for SIH and university reviews.

4. **Develop Your Project (`/develop`)**:
   - Step-by-step guidance tailored to the student's branch, tools, and timeline.
   - Hardware checklist, difficulty adaptation, and testing strategies.

5. **Project Idea Analyzer (`/analyzer`)**:
   - Natural language idea input.
   - Maps ideas to domain, subdomain, theme, and real-world problem statements.
   - Recommends matching projects from the GURU database.
   - Generates beginner, intermediate, and advanced variations.

6. **Domain Library (`/domains`)**:
   - Deep-dive guides for **VLSI, Communication Systems, Embedded Systems, IoT, Robotics, Data Science, Cybersecurity, Smart Automation, and Quantum Computing**.
   - Detailed breakdown distinguishing **Simulation vs. FPGA vs. Fabricated ASIC** for VLSI.

7. **Verified Hackathons (`/hackathons`)**:
   - Smart India Hackathon 2026, AI Bharat 5G/6G, TI Innovation Challenge, etc.
   - Verified official source links, eligibility, dates, and domain tracks.

8. **Submit a Problem (`/submit`)**:
   - Student submission workflow: `Draft` &rarr; `Submitted` &rarr; `Under Review` &rarr; `Approved / Published`.

9. **Find Collaborators (`/collaborators`)**:
   - Student matchmaking across roles: *Hardware Designer*, *Firmware Lead*, *Full-Stack Developer*, *ML Engineer*, *Researcher*.
   - Send collaboration requests with role requirements.

10. **Student Dashboard (`/dashboard`)**:
    - Saved bookmarks, active submissions, submission review status, collaboration requests.

11. **Admin Dashboard (`/admin`)**:
    - Multi-format document ingestion (PDF, DOCX, XLSX, TXT).
    - Review Queue for student submissions with Approve, Reject, or Request Changes.
    - Full project editing, category management, and audit history.

---

## 📂 Source Documents Ingested (10 Documents, 340 Projects — Capped to 50 per PDF)

All source documents are preserved in `source_documents/` and extracted into `server/guru.db` (enforcing a strict maximum of 50 problems per document):
1. `cybersecurity_projects_PROJECT_TITLES_CLEAR_1_25.pdf` (25 Projects)
2. `Data_Science_Business_Sales_Marketing_50_Projects_Table (1).pdf` (50 Projects)
3. `Embedded_Systems_200_Problems.pdf` (50 Projects, capped from 200)
4. `IoT_Problem_Bank_50_Problems.pdf` (50 Projects)
5. `Robotics_Subdomains_Project_Table.pdf` (20 Projects)
6. `Smart_Automation_CSE_ECE_36_Projects_Single_Table.pdf` (36 Projects)
7. `VLSI_ULSI_Project_Problems_30.pdf` (33 Projects)
8. `Wireless_Communication_Networks_25_Problem_Statements.pdf` (25 Projects)
9. `SIH2026.pdf` (1 Verified Official SIH Project)
10. `problem-statements-qff.pdf` (50 High-Impact Quantum & Amaravati Valley Use Cases)

Total Ingested in Catalog: **340 Verified Engineering Problems**

---

## 🎨 Pivot-Sols Redesign & 5-Step Student Workflow
- **Aesthetic**: Modeled after `pivot-sols.vercel.app` — dark luxury background (`#05010e`), violet/indigo glowing card borders (`#bba4e5`), General Sans typography, glassmorphism, glowing pills, and responsive layout.
- **Step 1 — Student Login**: Name and email entry with 1-click test student profiles (`arjun.ece@rgukt.ac.in`, `ananya.cse@rgukt.ac.in`).
- **Step 2 — Engineering Branches**: Interactive department cards for ECE, CSE, Electrical (EEE), Mechanical, and Multidisciplinary/SIH with problem counts and technology chips.
- **Step 3 — Branch Domains & Fields**: Strictly filtered to the chosen branch (e.g., selecting ECE strictly displays ECE domains such as Embedded Systems, VLSI, Communication Systems, IoT, Robotics; selecting CSE displays Data Science, Cybersecurity, Quantum Computing, Smart Automation).
- **Step 4 — Problem Suggestions & Catalogue**: Synchronized branch & domain dropdowns, keyword search, difficulty pills, and academic track filters.
- **Step 5 — Problem Statement Details**:
  - **5 Core Specifications Displayed Prominently**:
    1. Problem Statement & Objective (Official statement + beginner explanation)
    2. Classification & Domain Mapping (Branch, Domain, Subdomain, Theme)
    3. Difficulty & Academic Track Fit (Complexity, Mini/Major/SIH fit)
    4. Primary Tech Stack & Protocols (Software, Languages, Libraries)
    5. Required Hardware & Software BOM (Physical modules, Simulators)
  - **Expandable Deep-Dive Section**: Document heading/provenance reference, why it matters, affected stakeholders, gaps in existing solutions, 6-stage roadmap, expected output, and 7-slide SIH pitch outline.
  - **More Problems in Domain**: Infinite exploratory suggestions within the same domain.
  - **Problem Session**: Shortlisting dock and slide-out drawer to bookmark and review selected problems.

## 🛠️ Technology Stack

- **Frontend**: React 19 + TypeScript + Vite + Lucide Icons + Google Fonts (Inter & Outfit)
- **Backend**: Node.js + Express 5
- **Database**: SQLite with `better-sqlite3` (`server/guru.db`)
- **Document Processing**: Python (`pdfplumber`, `docx`, `openpyxl`)
- **Security**: SHA256 / bcrypt password hashing, server-side role-based authorization, JWT-style tokens.
