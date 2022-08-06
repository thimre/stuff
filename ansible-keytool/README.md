# keytool playbook
An ansible playbook to put certificates to a java kestore file. The certificates are in base64 encoded format with \n changed to \0 in the values.yml config file.  
__keytool and yes executables are needed for the playbook to work.__  

Define the required variables in values.yml.

ex:  
b64c=$(cat rootCA.crt | base64 -w 0)  
echo "  \"rootCA.crt\": \"$b64c\"" >> values.yml  


run with:  
`ansible-playbook createJKS.yaml  `  
