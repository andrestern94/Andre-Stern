#!/usr/bin/env python3
# Autor: Andre Stern
# Eesmärk: väljastada 200 juhuslikku täisarvu vahemikus 1–100.
# Kasutamine: python3 bash_eksperiment/scripts/generate_data.py

import random

for _ in range(200):
    print(random.randint(1, 100))

