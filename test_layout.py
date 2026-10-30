import subprocess
import os

pdf_path = "/home/rgukt/Downloads/pro/cybersecurity_projects_PROJECT_TITLES_CLEAR_1_25.pdf"
res = subprocess.run(["pdftotext", "-layout", pdf_path, "-"], stdout=subprocess.PIPE, text=True)
print("=== LAYOUT MODE (cybersecurity) ===")
lines = res.stdout.split("\n")
for l in lines[:30]:
    print(l)
