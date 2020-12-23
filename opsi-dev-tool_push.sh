#!/bin/bash
set -x
# Do not forget to export the passord
#export UIB_BINARYINDEX_PASSWORD="********"
opsi-dev-tool  -l info --binary-push ./CLIENT_DATA/opsi-script-test-helper-win/
opsi-dev-tool  -l info --binary-push ./CLIENT_DATA/opsi-script-test-helper-lin/
opsi-dev-tool  -l info --binary-push ./CLIENT_DATA/opsi-script-test-helper-mac/