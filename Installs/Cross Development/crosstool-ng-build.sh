#!/bin/bash

# Clone source repository
git clone https://github.com/crosstool-ng/crosstool-ng.git
cd crosstool-ng

# Reset all CRLFs to LFs
# (in case core.autocrlf is globally configured to true)
git rm . -r
git config core.autocrlf input
git reset --hard HEAD

# Configure crosstool
./bootstrap
./configure

# Build crosstool
make -j12
make install