import subprocess
import sys

# compiles into a format which is nicer to paste into turing complete
filename = sys.argv[1]
res = subprocess.run(f"customasm -f 'annotated,base:2' -p -q {filename}", shell=True, capture_output=True)
lines = res.stdout.decode()

assert len(lines) > 0

tc_formatted_lines = []

for l in lines.splitlines()[2:]:
    if not l: continue

    # outp | addr | data (base 2)
    data = l.split('|')[-1]
    data_tokens = data.split(';')
    inst = ''.join(data_tokens[0].split(' '))
    comment = data_tokens[1].lstrip()

    tc_formatted_lines.append(f"0b{inst} # {comment}")

print(f"# Generated from customasm {filename}\n")
list(map(lambda x: print(x), tc_formatted_lines))
