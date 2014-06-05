#!/bin/bash
# this script can be used in combination with the gce types to install
# puppet and classify the provisioned instances

# For more on metadata, see https://developers.google.com/compute/docs/metadata
MD="http://metadata/computeMetadata/v1beta1/instance"
PUPPET_PE_MASTER=$(curl -fs $MD/attributes/pe_master)
curl -k https://${PUPPET_PE_MASTER}:8140/packages/current/install.bash | bash
