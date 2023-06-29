# Update package
sudo apt-get update

# Install packages to allow apt to use repository over HTTPS
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Get Dokcer's officel GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set a stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu    $(lsb_release -cs) stable"

# Install Docker 
sudo apt-get install docker-ce

# Run a container
sudo docker run hello-world

docker run --name webserver -d -p 8080:80 nginx
docker run --name webserver2 -d -p 8081:80 nginx

docker run --name some-cassandra --network some-network -d cassandra
