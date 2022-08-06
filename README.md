# keytool playbook
ansible playbook to put certificates to a java kestore file. The certificates are in base64 encoded format (cat certfile.crt | base64 -w 0) in the values.yaml config file.

keytool and yes executables are needed for the playbook to work


define the required variables in values.yaml

run with:
ansible-playbook createJKS.yaml
