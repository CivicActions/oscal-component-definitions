#! /usr/bin/env bash

# Convert OpenControl components in library to OSCAL-1.0.2

# From: https://github.com/CivicActions/compliance-io

git clone git@github.com:CivicActions/oscal-component-definitions.git
# cd oscal-component-definitions
# git checkout oscal-1.0.2
# cd ..

git clone git@github.com:CivicActions/compliance-io.git
cd compliance-io
git checkout oscal-1.0.2
python -m venv venv
poetry install

for comp in $(find ../oscal-component-definitions -name opencontrol.yaml | cut -d'/' -f 3); do
  oscal="../oscal-component-definitions/${comp}/oscal/${comp}.json"
  if [ ! -f "${oscal}" ]; then
    poetry run python examples/oc_to_oscal_components.py ../oscal-component-definitions/${comp}/opencontrol/opencontrol.yaml > ${oscal}
    echo "created ${oscal}"
  else
    echo "skipped ${oscal}"
  fi
done
