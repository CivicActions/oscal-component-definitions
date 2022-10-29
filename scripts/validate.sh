#! /usr/bin/env bash

# Validate components in library to be OSCAL-1.0.2 compliant

# From: https://github.com/usnistgov/OSCAL/tree/main/json#validating-oscal-json-content
# Using:
#  component schema from: https://github.com/usnistgov/OSCAL/tree/main/json/schema
#  schema validator from: https://ajv.js.org/

git clone git@github.com:usnistgov/OSCAL.git
cd OSCAL
git checkout release-1.0
cd ..

git clone git@github.com:CivicActions/component-library.git
cd component-library
# git checkout oscal-1.0.2 - optional

for comp in $(find . -name opencontrol.yaml | cut -d'/' -f 2); do
  ajv validate -s ../OSCAL/json/schema/oscal_component_schema.json -d ${comp}/oscal/${comp}.json --extend-refs=true --verbose
done
