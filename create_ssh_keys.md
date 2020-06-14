# Create SSH Key-Pair

**NOTE - For Windows use Git Bash for ssh keys creation**

## Check if keys already exists or not
* *ls -a -l ~/.ssh*
* **-a : check hidden files also**
* **-l : print in 1 col instead of side to side**
* if there are . and .., that means your .ssh folder is empty, keys do not exists
* **id_rsa id_rsa.pub** if these files exists, then you have an existing set of ssh key-pair
* **id_rsa** is a decret file, must only be limited to your system, should not be present at another device/location
* **id_rsa.pub** is a public file that you can share with the medium you want to use for secure communication between your device and external servers

## Create New keys
* *ssh-keygen -t rsa -b 4096 -C "email_id"*
* **-t : type of protocol**
* **rsa stands for initials of the creator of the algorithm**
* **-b 4096 : 4096 bits for key, for enough security (avg value)**

## Make sure ssh agent is running on your device, to be able you use ssh keys with external servers
* **linux/macOS** : *eval "$(ssh-agent -s)"*
* **windows** : *eval $(ssh-agent -s)* (with inverted quotes)

## Register the file
* **macOS** : *ssh-add -K ~/.shh/id_rsa*
* **linux/windows** : *ssh-add ~/.ssh/id_rsa*

## Your Public SSH key
* *cat ~/.ssh/id_rsa.pub*

### For Github, test your connection
* *ssh -T git@github.com*