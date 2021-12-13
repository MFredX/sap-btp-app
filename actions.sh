python --version
echo Running version fetching script
cat mta.yaml 
echo --------Printing Version---------
<  mta.yaml shyaml get-value version 

cat <<EOF > test.yaml
name: "MyName !!"
subvalue:
    how-much: 1.1
    how-many: 2
    things:
        - first
        - second
        - third
    maintainer: "Valentin Lab"
    description: |
        Multiline description:
        Line 1
        Line 2
subvalue.how-much: 1.2
subvalue.how-much\more: 1.3
subvalue.how-much\.more: 1.4
EOF

cat test.yaml | shyaml get-value name