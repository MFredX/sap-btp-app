#!/bin/sh
BRANCH=$BUILD_SOURCEBRANCHNAME
echo $BRANCH
if [ $BRANCH = "dev" ]
then
    echo "Configuring dev environment"
    echo "Deleting mta.yaml,ui5-deploy.yaml,xs-security.json,webapp/manifest.json...."
    rm mta.yaml
    rm ui5-deploy.yaml
    rm xs-security.json
    rm webapp/manifest.json
    echo "Delete complete"
    echo "Moving env specific files"
    cp env-properties/dev/dev-mta.yaml mta.yaml
    cp env-properties/dev/dev-ui5-deploy.yaml ui5-deploy.yaml 
    cp env-properties/dev/dev-xs-security.json xs-security.json 
    cp env-properties/dev/dev-manifest.json webapp/manifest.json

elif [ $BRANCH = "test" ]
then
    echo "Configuring test environment"
elif [ $BRANCH = "master" ]
then
    echo "Configuring prod environment"
else
    echo "No suitable env found"
fi
