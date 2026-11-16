"""Check simple relative Markdown links in this collection."""

import re
import sys
from pathlib import Path
from urllib.parse import unquote


root = Path(__file__).resolve().parents[1]
broken = []
checked = 0
for document in root.rglob("*.md"):
    if ".git" in document.parts:
        continue
    content = document.read_text(encoding="utf-8", errors="replace")
    prose = []
    in_fence = False
    for line in content.splitlines():
        if re.match(r"^\s*(`{3,}|~{3,})", line):
            in_fence = not in_fence
            continue
        if not in_fence:
            prose.append(line)
    for target in re.findall(r"!?\[[^\]]*\]\(([^)]+)\)", "\n".join(prose)):
        target = target.strip().split(" ", 1)[0].strip("<>")
        if not target or target.startswith(("#", "/", "//")) or ":" in target.split("/", 1)[0]:
            continue
        if "<" in target or ">" in target or "{" in target or "}" in target:
            continue
        path = unquote(target.split("#", 1)[0].split("?", 1)[0])
        if not path:
            continue
        checked += 1
        if not (document.parent / path).exists():
            broken.append(f"{document.relative_to(root)} -> {target}")

print(f"Checked {checked} relative Markdown links; {len(broken)} missing targets.")
for item in broken:
    print(item)
sys.exit(1 if broken else 0)
