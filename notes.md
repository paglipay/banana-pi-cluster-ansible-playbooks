docker run -v "${PWD}":/work:ro -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro --rm spy86/ansible:latest ansible-playbook playbook.yml

docker run -v "${PWD}":/work:ro -rm spy86/ansible:latest ping.yml
docker run -v "${PWD}":/work:ro paglipay/ansible-banana:latest ping.yml
docker run -v "${PWD}":/work:ro -v ~/.ssh:/root/.ssh paglipay/ansible-banana:latest ping.yml

install sshpass

sudo ansible-playbook ping.yml --ask-become-pass --ask-pass -vv
docker run -v "${PWD}":/work:ro -rm bananapiclusteransibleplaybooks:latest ping.yml
docker run -v "${PWD}":/work:ro -v "${PWD}/ansible":/etc/ansible:ro -v "${PWD}/hosts":/etc/hosts:ro bananapiclusteransibleplaybooks:latest ansible-playbook ping.yml --ask-become-pass --ask-pass -vv

docker run -v "${PWD}":/work:ro -v "${PWD}/ansible":/etc/ansible:ro -v "${PWD}/hosts":/etc/hosts:ro -v ~/.ssh/:/root/.ssh/:ro bananapiclusteransibleplaybooks:latest ansible-playbook ping.yml 

docker run -v "${PWD}":/work:ro -v "${PWD}/ansible":/etc/ansible:ro -v "${PWD}/hosts":/etc/hosts:ro -v ~/.ssh/:/root/.ssh/:ro bananapiclusteransibleplaybooks:latest ansible-playbook configure-hosts.yml 


docker run --rm     -v $(pwd):/ansible     -v ~/.ssh:/root/.ssh     -w /ansible     ansible-docker ansible-playbook -i hosts ping.yml -vv