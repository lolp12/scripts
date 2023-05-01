# Install Docker

sudo apt-get update
sudo apt-get instll docker.io

# Start Docker

sudo systemctl start docker

# Enable Docker to start at boot

sudo systemctl enable docker

# Install Portainer using Docker

sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

# Access Portainer http://localhost:9000 in your web browser.

# Portainer Templates *optional* 
# https://raw.githubusercontent.com/Qballjos/portainer_templates/master/Template/template.json

