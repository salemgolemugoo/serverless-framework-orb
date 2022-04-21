#!/bin/bash
curl -o- -L https://slss.io/install | bash
echo "export PATH=$HOME/.serverless/bin:$PATH" >> "$BASH_ENV"
# shellcheck disable=SC1090
source "$BASH_ENV"
# Check for Serverless key
if [ -z "$SERVERLESS_ACCESS_KEY" ]; then
  echo "Error: The environment variable SERVERLESS_ACCESS_KEY is empty.
    Please create your serverless dashboard access key and add it to this project as a project environment vairable
    or via contexts.
    https://serverless.com/framework/docs/dashboard/cicd/running-in-your-own-cicd#configure-environment-variables"
fi