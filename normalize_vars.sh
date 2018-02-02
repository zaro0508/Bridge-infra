#!/usr/bin/env bash

# normalize env vars with by git branch
eval export "AwsAccount=\$TRAVIS_BRANCH"
eval export "AwsDefaultVpcId=\$AwsDefaultVpcId_$TRAVIS_BRANCH"
eval export "AwsVpcSubnetPrefix=\$AwsVpcSubnetPrefix_$TRAVIS_BRANCH"
eval export "CloudformationNotifyLambdaTopicArn=\$CloudformationNotifyLambdaTopicArn_$TRAVIS_BRANCH"
eval export "InitNewUserPassword=\$InitNewUserPassword_$TRAVIS_BRANCH"
eval export "JacobianUserPassword=\$JacobianUserPassword_$TRAVIS_BRANCH"
eval export "NewRelicAccountId=\$NewRelicAccountId_$TRAVIS_BRANCH"
eval export "NewRelicExternalId=\$NewRelicExternalId_$TRAVIS_BRANCH"
eval export "OperatorEmail=\$OperatorEmail_$TRAVIS_BRANCH"
eval export "FhcrcVpnCidrip=\$FhcrcVpnCidrip_$TRAVIS_BRANCH"
eval export "SSLCertArn=\$SSLCertArn_$TRAVIS_BRANCH"
