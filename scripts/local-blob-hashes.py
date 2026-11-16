"""Print Git blob SHA-1 hashes for the collection's skill files."""

import hashlib
import json
from pathlib import Path


root = Path(__file__).resolve().parents[1]
result = {}
for path in sorted((root / "skills").rglob("*")):
    if not path.is_file():
        continue
    data = path.read_bytes()
    blob = b"blob " + str(len(data)).encode() + b"\0" + data
    result[path.relative_to(root).as_posix()] = hashlib.sha1(blob).hexdigest()
print(json.dumps(result, sort_keys=True))
