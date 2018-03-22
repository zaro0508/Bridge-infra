#!/usr/bin/env bash

TEMPLATE_URL=$1

aws cloudformation update-stack \
--stack-name $STACK_NAME \
--capabilities CAPABILITY_NAMED_IAM \
--notification-arns $CloudformationNotifyLambdaTopicArn \
--template-url $TEMPLATE_URL \
--parameters \
ParameterKey=AwsAccount,ParameterValue=$AwsAccount \
ParameterKey=AwsDefaultVpcId,ParameterValue="$AwsDefaultVpcId" \
ParameterKey=InitNewUserPassword,ParameterValue="$InitNewUserPassword" \
ParameterKey=JacobianUserPassword,ParameterValue="$JacobianUserPassword" \
ParameterKey=NewRelicAccountId,ParameterValue=$NewRelicAccountId \
ParameterKey=NewRelicExternalId,ParameterValue=$NewRelicExternalId \
ParameterKey=OperatorEmail,ParameterValue=$OperatorEmail \
ParameterKey=FhcrcVpnCidrip,ParameterValue=$FhcrcVpnCidrip \
ParameterKey=VpcPeeringRequesterAwsAccountId,ParameterValue=$VpcPeeringRequesterAwsAccountId
