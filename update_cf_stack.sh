#!/usr/bin/env bash

# deploy with evaluated vars
aws cloudformation update-stack \
--stack-name $STACK_NAME \
--capabilities CAPABILITY_NAMED_IAM \
--template-body file://cf_templates/bridgepf.yml \
--parameters \
ParameterKey=JacobianUserPassword,ParameterValue="$JacobianUserPassword"
