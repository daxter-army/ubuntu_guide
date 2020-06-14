## NODE.JS
* *curl -sL https://deb.nodesource.com/setup_{version_number_like_12,14}.x | sudo -E bash -*
* *sudo apt-get install nodejs*
* Check installed version with *node -v*

## MONGO DB
* *sudo apt-get install mongodb* **NOTE - will install an older version**
* *sudo apt-get update*
* *sudo service mongodb start*
* To start shell :- *mongo*

## DOCKER
* Uninstall any previous version with this
    * *sudo apt-get remove docker docker-engine docker.io containerd runc*
* *sudo apt-get update*
* *sudo apt-get install \ apt-transport-https \ ca-certificates \ curl \ gnupg-agent \ software-properties-common*
* *curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -*
* *sudo apt-key fingerprint 0EBFCD88*
* *sudo add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) \ stable"*
* *sudo apt-get update*
* *sudo apt-get install docker-ce docker-ce-cli containerd.io*
* Try if it is installed or not with :- *sudo docker run hello-world*

## POSTGRESQL
* Create a file at /etc/apt/sources.list.d/pgdg.list and add a line
    * *deb http://apt.postgresql.org/pub/repos/apt/ (YOUR_UBUNTU_VERSION_HERE : bionic/xenial/focal)- pgdg main*
* *wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -*
* *sudo apt-get update*
* *apt-get install postgresql-12*
* *service postgresql start/stop/status/restart*

*for shell by default user - postgres*
* *sudo su postgres*
* *psql*
* *man psql*

**user : daxter_army**
**password : Daxter2000@**

## HEROKU
* *sudo snap install --classic heroku*
* *heroku --version*

## GIT
* *sudo apt-get update*
* *sudo apt-get install git*
* *git --version*