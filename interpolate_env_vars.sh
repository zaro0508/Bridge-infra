#!/usr/bin/env bash

# double interpolate environment variables
eval export "TravisUserKey=\$TravisUserKey_$TRAVIS_BRANCH"
eval export "TravisUserSecretKey=\$TravisUserSecretKey_$TRAVIS_BRANCH"
eval export "JacobianUserPassword=\$JacobianUserPassword_$TRAVIS_BRANCH"
