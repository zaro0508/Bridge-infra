#!/usr/bin/env bash

TEMPLATE_URL=$1

aws cloudformation update-stack \
--stack-name $STACK_NAME \
--capabilities CAPABILITY_NAMED_IAM \
--template-url $TEMPLATE_URL \
--parameters \
ParameterKey=InitNewUserPassword,ParameterValue="$InitNewUserPassword" \
ParameterKey=JacobianUserPassword,ParameterValue="$JacobianUserPassword" \
ParameterKey=NewRelicAccountId,ParameterValue=$NewRelicAccountId \
ParameterKey=NewRelicExternalId,ParameterValue=$NewRelicExternalId \
ParameterKey=OperatorEmail,ParameterValue=$OperatorEmail \
ParameterKey=FhcrcVpnCidrip,ParameterValue=$FhcrcVpnCidrip
