# JKS truststore creator playbook
An ansible playbook to put certificates to a newly created java kestore file. The certificates are in base64 encoded format with \n changed to \0 in order to store them in one single line. They are defined in the values.yml config file.  

__keytool and yes executables are needed for the playbook to work.__  


1. Define the required variables in values.yml.
2. Add the certificates  
```
b64c=$(cat rootCA.crt | base64 -w 0)  
echo "    \"rootCA.crt\": \"$b64c\"" >> values.yml   
```

3. run with:  
`ansible-playbook createJKS.yaml  `  
