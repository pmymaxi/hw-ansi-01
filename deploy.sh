#! /bin/bash

#deploy container docker 
sudo docker compose up -d
echo
DIST=(rocky9 debian fedora)
COUNT=0

for SD in ${DIST[@]}; do
    STATE=$(docker inspect -f '{{.State.Running}}' $SD)
    echo "$SD - $STATE"
    
    if [ "$STATE" = "true" ]; then
            ((COUNT++))
    fi
done

if [ "$COUNT" -eq 3 ]; then
    echo 
    docker compose ps
    echo 
    if grep -qr "ANSIBLE_VAULT;1.1;AES256" ./ \
    --exclude="*.sh" --exclude="*.md"; then
        ansible-playbook -i inventory/prod.yml site.yml --ask-vault-password
    else
        ansible-playbook -i inventory/prod.yml site.yml
    fi
else
    echo "Check start container"
    docker compose ps -a
fi

sleep 15s

docker compose down
echo
docker compose ps -a
