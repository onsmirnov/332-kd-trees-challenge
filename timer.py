#!/usr/bin/python3
import subprocess
import re

RUNS = 5

p = re.compile("[0-9]:(([0-9]*[.])?[0-9]+)elapsed")

times = []
for i in range(RUNS):
  process = subprocess.Popen("time ./kdtreetest 10000000", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
  out, err = process.communicate()
  parsed = p.search(err.decode())
  t = float(parsed.group(1))
  print("Run", i, ":", t)
  times.append(t)

total = 0
for t in times:
  total += t

print("Average time: ", total / RUNS)
