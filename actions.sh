echo Running version fetching script
shyaml -V | grep "^libyaml used:"  
cat mta.yaml | shyaml get-value version

