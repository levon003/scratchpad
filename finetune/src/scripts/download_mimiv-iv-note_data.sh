#!/bin/bash
# Script to download the MIMIV-IV-Note data
# Note that I didn't actually run this script, these are just the commands I ran. Note the hard-coded username.
# wget command from: https://physionet.org/content/mimic-iv-note/2.2/

if [ -d "data/raw/mimic-iv-note" ]; then
    echo "MIMIC IV Note folder already exists."
    exit 1
fi

cd data/raw
wget -r -N -c -np --user zlevonian --ask-password https://physionet.org/files/mimic-iv-note/2.2/
mv physionet.org/files/mimic-iv-note .
echo "Success."
