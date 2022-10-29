#! /usr/bin/env bash

# Convert OpenControl components in library to OSCAL-1.0.2

# From: https://github.com/CivicActions/compliance-io

git clone git@github.com:CivicActions/component-library.git
# cd component-library
# git checkout oscal-1.0.2
# cd ..

git clone git@github.com:CivicActions/compliance-io.git
cd compliance-io
git checkout oscal-1.0.2
python -m venv venv
poetry install

for comp in $(find ../component-library -name opencontrol.yaml | cut -d'/' -f 3); do
  oscal="../component-library/${comp}/oscal/${comp}.json"
  if [ ! -f "${oscal}" ]; then
    poetry run python examples/oc_to_oscal_components.py ../component-library/${comp}/opencontrol/opencontrol.yaml > ${oscal}
    echo "created ${oscal}"
  else
    echo "skipped ${oscal}"
  fi
done
