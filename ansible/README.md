USEFUL COMMANDS:


# Copy keys via SCP
scp ansible/keys/id_rsa.pub lbritos@192.168.10.81:~

# Execute playbook from host
docker exec -it ansible ansible-playbook /etc/ansible/playbook/p6.yaml
