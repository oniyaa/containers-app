container run --rm \
  -v "$PWD/lrc:/music" \
  python:3.11-slim \
  python -c "
import os
import re

for f in os.listdir('/music'):
    if f.lower().endswith('.lrc'):
        m = re.match(r'^([0-9]+)&[0-9]+(\..*)$', f)
        if m:
            new = m.group(1) + m.group(2)
            old_path = os.path.join('/music', f)
            new_path = os.path.join('/music', new)

            if not os.path.exists(new_path):
                os.rename(old_path, new_path)
                print(f'{f} -> {new}')
            else:
                print(f'SKIP (already exists): {new}')
print('Rename finished!')
"