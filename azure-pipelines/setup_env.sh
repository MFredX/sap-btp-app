#!/bin/sh
BRANCH=$BUILD_SOURCEBRANCHNAME
if [ $BRANCH = "dev" ]
then
    echo "Configuring dev environment"
    echo "Deleting mta.yaml,ui5-deploy.yaml,xs-security.json,webapp/manifest.json......"
    rm mta.yaml
    rm ui5-deploy.yaml
    rm xs-security.json
    rm webapp/manifest.json
    echo "Deletion complete..."
    echo "Moving env specific files..."
    cp env-properties/dev/dev-mta.yaml mta.yaml
    cp env-properties/dev/dev-ui5-deploy.yaml ui5-deploy.yaml 
    cp env-properties/dev/dev-xs-security.json xs-security.json 
    cp env-properties/dev/dev-manifest.json webapp/manifest.json
    echo "Environment setup complete..."

elif [ $BRANCH = "test" ]
then
    echo "Configuring test environment"
    echo "Configuring dev environment"
    echo "Deleting mta.yaml,ui5-deploy.yaml,xs-security.json,webapp/manifest.json......"
    rm mta.yaml
    rm ui5-deploy.yaml
    rm xs-security.json
    rm webapp/manifest.json
    echo "Deletion complete..."
    echo "Moving env specific files..."
    cp env-properties/test/test-mta.yaml mta.yaml
    cp env-properties/test/test-ui5-deploy.yaml ui5-deploy.yaml 
    cp env-properties/test/test-xs-security.json xs-security.json 
    cp env-properties/test/test-manifest.json webapp/manifest.json
    echo "Environment setup complete..."

elif [ $BRANCH = "master" ]
then
    echo "Configuring prod environment"
    echo "Configuring dev environment"
    echo "Deleting mta.yaml,ui5-deploy.yaml,xs-security.json,webapp/manifest.json......"
    rm mta.yaml
    rm ui5-deploy.yaml
    rm xs-security.json
    rm webapp/manifest.json
    echo "Deletion complete..."
    echo "Moving env specific files..."
    cp env-properties/prod/prod-mta.yaml mta.yaml
    cp env-properties/prod/prod-ui5-deploy.yaml ui5-deploy.yaml 
    cp env-properties/prod/prod-xs-security.json xs-security.json 
    cp env-properties/prod/prod-manifest.j

else
    echo "No suitable env found"

fi
