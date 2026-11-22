#!/bin/bash
# Autor: Andre Stern
# Eesmärk: genereerida kümme 200 juhusliku arvuga andmefaili.
# Kasutamine: bash bash_eksperiment/scripts/generate_data.sh

set -e

script_dir="$(cd "$(dirname "$0")" && pwd)"
data_dir="$script_dir/../data"

mkdir -p "$data_dir"

for i in {1..10}; do
    python3 "$script_dir/generate_data.py" > "$data_dir/data$i.txt"
done
