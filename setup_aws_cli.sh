#!/usr/bin/env bash

# double interpolate vars from travis
eval export "TravisUserKey=\$TravisUserKey_$TRAVIS_BRANCH"
eval export "TravisUserSecretKey=\$TravisUserSecretKey_$TRAVIS_BRANCH"

pip install --upgrade awscli
mkdir ~/.aws
echo -e "[default]\nregion=us-east-1" > ~/.aws/config
echo -e "[default]\naws_access_key_id=$TravisUserKey\naws_secret_access_key=$TravisUserSecretKey" > ~/.aws/credentials
