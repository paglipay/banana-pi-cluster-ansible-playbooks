docker run -v "${PWD}":/work:ro -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro --rm spy86/ansible:latest ansible-playbook playbook.yml

docker run -v "${PWD}":/work:ro -rm spy86/ansible:latest ping.yml
docker run -v "${PWD}":/work:ro paglipay/ansible-banana:latest ping.yml
docker run -v "${PWD}":/work:ro -v ~/.ssh:/root/.ssh paglipay/ansible-banana:latest ping.yml