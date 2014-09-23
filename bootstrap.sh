#!/bin/bash

knife bootstrap "$HOST_NAME" \
    --ssh-user "$AWS_SSH_USERNAME" \
    --node-name "$HOST_NAME" \
    --identity-file "$AWS_SSH_KEY_PATH" \
    --run-list "role[chef-client],role[zabbix-server],role[zabbix-agent]" \
    --sudo

