#!/bin/sh

branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
echo $branch
echo "------------"
if [ $branch == "dev" ]
then
    echo "Configuring dev environment"
fi
elif [ $branch == "test" ]
then
    echo "Configuring test environment"
elif [ $branch == "master" ]
then
    echo "Configuring prod environment"
else
    echo "No suitable env found"
fi
