#!/usr/bin/env bash

echo "Downloading jboss-cli plugin for kubectl..."

mkdir kubectl-jboss-cli
cd kubectl-jboss-cli
curl -O -sL https://raw.githubusercontent.com/jmesnil/kubectl-jboss-cli/main/kubectl-jboss_cli
chmod u+x ./kubectl-jboss_cli
curl -O -sL https://raw.githubusercontent.com/jmesnil/kubectl-jboss-cli/main/kubectl-jboss_cli-app
chmod u+x ./kubectl-jboss_cli-app
curl -O -sL https://raw.githubusercontent.com/jmesnil/kubectl-jboss-cli/main/kubectl-jboss_cli-apply_script
chmod u+x ./kubectl-jboss_cli-apply_script

echo "
The jboss-cli plugin installed in $(pwd).

You must add it to your PATH to be able to use it with:

  export PATH=\$PATH:$(pwd)
"

cd ..

