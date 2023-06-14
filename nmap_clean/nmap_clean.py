#!/usr/bin/env python3

import re
import fileinput

f = fileinput.input()

results = []
unresolved = []
while True:
    line = f.readline()
    if line.startswith('Failed to resolve'):
        match = re.search(r'"([^"]+)"', line)
        unresolved.append(f'{match.group(1)} not resolved')

    if line.startswith('Nmap scan report for'):
        ip_address = line.split()[-1]
        hostname = line.split()[4]
        results.append(' ')
        results.append(f'{hostname} {ip_address}')
        result = f'{hostname} {ip_address}'

    if 'tcp' in line or 'udp' in line:
        results.append(line.strip())

    if not line:
        break

for result in unresolved:
    print(result)

for result in results:
    print(result)
