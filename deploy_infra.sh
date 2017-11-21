#!/usr/bin/env bash

# validate cf templates (local)
echo "Validating cloudformation templates..."
aws cloudformation validate-template --template-body file://cf_templates/bridge.yml

# Deploy cloudformation template when PR merges or on a direct push
if [[ "$TRAVIS_PULL_REQUEST" = "false" ]]; then
    echo "Deploy cloudformation templates..."
    # Handle message that shouldn't be an error, https://github.com/hashicorp/terraform/issues/5653
    message=$(./update_cf_stack.sh 2>&1 1>/dev/null)
    error_code=$(echo $?)
    if [[ $error_code -ne 0 && $message =~ .*"No updates are to be performed".* ]]; then
      echo "No stack changes detected. An update is not required."
      exit 0
    fi
    echo $message
    exit $error_code
fi
