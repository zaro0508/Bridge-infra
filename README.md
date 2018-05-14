# Overview
Install, configure and manage the Bridge AWS account.


## Create resources

```
aws --profile aws-admin --region us-east-1 cloudformation create-stack \
  --stack-name bridge \
  --capabilities CAPABILITY_NAMED_IAM \
  --template-body templates/bridge.yaml \
  --parameters \
  ParameterKey=JacobianUserPassword,ParameterValue=a_good_password \
  ..
  .. [Rest of the parameters from update_cf_stack.sh]

```

The above should setup resources for the Bridge account.  Once the infrastructure for Bridge account has been setup
you can access and view the account using the AWS console[1].  When you are satisified with how the account
is configured you can run BridgePF-infra[2] template to setup BridgePF in the account.

## Continuous Integration
We have configured Travis to deploy CF template updates.  Travis deploys using
[sceptre](https://sceptre.cloudreach.com/latest/about.html)

# Contributions

## Issues
* https://sagebionetworks.jira.com/projects/BRIDGE

## Builds
* https://travis-ci.org/Sage-Bionetworks/Bridge-infra

## Secrets
* We use git-crypt[3] to hide secrets.  Access to secrets is tightly controlled.  You will be required to
have your own GPG key[4] and you must request access by a maintainer of this project.



# References

[1] https://AWS-account-ID-or-alias.signin.aws.amazon.com/console

[2] https://github.com/Sage-Bionetworks/Bridge-infra

[3] https://github.com/AGWA/git-crypt

[4] https://help.github.com/articles/generating-a-new-gpg-key
