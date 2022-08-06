# keytool playbook
ansible playbook to put certificates to a java kestore file. The certificates are in base64 encoded format in the values.yaml config file.
keytool and yes executables are needed for the playbook to work0yy

define the required variables in values.yaml

ex:
b64c=$(cat rootCA.crt | base64 -w 0)
echo "  \"rootCA.crt\": \"$b64c\"" >> values.yml


run with:
ansible-playbook createJKS.yaml
