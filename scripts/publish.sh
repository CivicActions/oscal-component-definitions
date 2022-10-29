#! /usr/bin/env bash

# Publish a candidate component in OpenControl, OSCAL, Markdown and HTML
# Not yet a script, but handy commands for manual use
exit 1

# Run from the activated rato-processing environment
# Expected directory structure:
# workspace/atoasap/rato-processing/  -- activated
#                  /component-library/
#                  /compliance-io/    -- activated

# workspace/atoasap/rato-processing/
# pyenv activate rato-processing

comp=
loc_dir="./local/candidates/${comp}"
lib_dir="../component-library/${comp}"

candidate html $comp

mkdir -p $lib_dir/oscal
cp -a ${loc_dir}/opencontrol $lib_dir
cp $loc_dir/README.md $lib_dir

pushd $lib_dir/
cp ../splunk/opencontrol/opencontrol.yaml opencontrol/
replace Splunk $comp -- opencontrol/opencontrol.yaml
popd

# workspace/atoasap/compliance-io/
# pyenv activate compliance-io

comp=

lib_dir="../component-library/${comp}"
oscal="$lib_dir/oscal/${comp}.json"

poetry run python examples/oc_to_oscal_components.py $lib_dir/opencontrol/opencontrol.yaml > $oscal

ajv validate -s ../OSCAL/json/schema/oscal_component_schema.json -d $oscal --extend-refs=true --verbose
