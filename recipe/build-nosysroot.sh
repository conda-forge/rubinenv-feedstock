#!/bin/bash
mkdir -p "${PREFIX}/bin"
cp "${RECIPE_DIR}/pin-it" "${PREFIX}/bin/pin-it"

# Copy the [de]activate scripts to $PREFIX/etc/conda/[de]activate.d.
# This will allow them to be run on environment activation.
# Take advantage of "rubin-env" being alphabetically later than "eups".
for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/${PKG_NAME}_${CHANGE}.sh"
done
