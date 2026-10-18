container run --rm \
  -v "$PWD/lrc:/lrc" \
  python:3.11-slim \
  python -c "
import os

ads = [
    '[ar:山海作品推荐]',
    '[by:山海作品推荐]'
]

for r, d, fs in os.walk('/lrc'):
    for f in fs:
        if f.lower().endswith('.lrc'):
            p = os.path.join(r, f)

            with open(p, 'r', encoding='utf-8', errors='ignore') as file:
                lines = file.readlines()

            new_lines = [line for line in lines if not any(ad in line for ad in ads)]

            if len(lines) != len(new_lines):
                with open(p, 'w', encoding='utf-8') as file:
                    file.writelines(new_lines)
                print('Cleaned:', p)

print('Cleanup finished!')
"