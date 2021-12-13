python --version
echo Running version fetching script
cat mta.yaml 
echo --------Printing Version---------
cat mta.yaml | shyaml get-value 'version'