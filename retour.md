git clone https://github.com/invoiceninja/dockerfiles.git
cd dockerfiles/
git checkout 5.3.66
APP_URL=http://in.localhost:8003/
APP_KEY=<insert your generated key in here>
APP_DEBUG=true
REQUIRE_HTTPS=false
IN_USER_EMAIL=
IN_PASSWORD=
IN_PASSWORD=changeme
IN_USER_EMAIL=jean.baptiste.lasselle@gmail.com
APP_URL=http://ninja.dev:8003/
echo "GENERATED_APP_KEY=[${GENERATED_APP_KEY}]"
APP_KEY="${GENERATED_APP_KEY}"
chmod 755 docker/app/public
sudo chown -R 1500:1500 docker/app
sed -i "s#192.168.0.124#192.168.1.103#g" config/hosts
sed -i "s#192.168.0.124#192.168.1.103#" config/hosts
cat config/hosts
sed -i "s#in5.test#ninja.dev#" config/hosts
cat config/hosts
APP_URL=http://ninja.dev:80/
docker-compose up -d
docker ps -a
sudo apt-get install -y net-tools
netstat -tulpn | grep 80
sudo ufw status
ip addr| grep 168
ip addr
sudo iptables -I INPUT 1 -i enp0s3 -p tcp --dport 8080 -j ACCEPT
service iptables save
sudo systemctl iptables save
sudo systemctl save iptables
sudo mkdir -p /etc/iptables
sudo /sbin/iptables-save | sudo tee /etc/iptables/rules.v4
export LINUX_NET_INTERFACE="enp0s3"
export PORT_TO_OPEN="8080"
export PORT_TO_OPEN="80"
sudo iptables -I INPUT 1 -i ${LINUX_NET_INTERFACE} -p tcp --dport ${PORT_TO_OPEN} -j ACCEPT
sudo /sbin/iptables-save | sudo tee /etc/iptables/rules.v4
sudo /sbin/ip6tables-save | sudo tee /etc/iptables/rules.v6
sudo apt install iptables-persistent
sudo systemctl status netfilter-persistent.service --no-pager -l
docker-compose up -d --force-recreate
APP_URL=http://ninja.dev:80/
export INVOICENINJA_DOCKER_TAG=${INVOICENINJA_DOCKER_TAG:-"5.3.66"}
docker pull invoiceninja/invoiceninja:${INVOICENINJA_DOCKER_TAG}
export GENERATED_INVOICENINJA_APP_KEY=$(docker run --rm -it invoiceninja/invoiceninja php artisan key:generate --show | tr -d "\n\r")
echo "GENERATED_INVOICENINJA_APP_KEY=[${GENERATED_INVOICENINJA_APP_KEY}]"
APP_KEY="3OS7nZ44r3PhrCb+jVk+TAEoTKnyxD1179NBdgD3ivo="
docker-compose up -d --force-recreate
APP_CIPHER='AES-256-CBC'
docker-compose up -d --force-recreate
APP_KEY='3OS7nZ44r3PhrCb+jVk+TAEoTKnyxD1179NBdgD3ivo='
docker-compose up -d --force-recreate
docker run --rm -it invoiceninja/invoiceninja php artisan key:generate --show
APP_KEY='rD/wVboNS2NuoR00nXRqxHGVelp4DLTfAeXmeBtySrI='
export APP_KEY='rD/wVboNS2NuoR00nXRqxHGVelp4DLTfAeXmeBtySrI='
export APP_CIPHER='AES-256-CBC'
docker-compose up -d --force-recreate
export APP_CIPHER=aes-256-cbc
docker-compose up -d --force-recreate
export APP_CIPHER='AES-128-CBC'
docker-compose up -d --force-recreate
