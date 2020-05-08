 #!/usr/bin/bash
## Switch to home
cd ~

##
git clone https://github.com/my0373/lamp_image.git

## Switch to the home directory
cd lamp_image

## Clean up the existing image
sudo podman rmi "localhost/test_lamp_build"

## Commands to build the image
sudo podman build --tag rhel8:lamp -f ./lamp.DockerFile

##
cd ~

##
rm -rf  ~/lamp_image

## List the imaes
podman images


## Run the podman container
sudo podman run -p 8080:80 --name lamp --rm rhel8:lamp

