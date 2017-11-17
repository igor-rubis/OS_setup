# MyVagrant

My first taste of Vagrant.

I created a Vagrantfile to create vm -> install Apache2 there -> set it up that way that it will publish the site/project from the folder which is shared between host and guest.

To install java jdk1.8.0_73 you need to download the jdk-8u73-linux-x64.tar.gz from Oracle site and put it into the 'packages/java' folder.

The Apache2 itself run on http://127.0.0.1:8080/

Jenkins run on http://127.0.0.1:8081/

SVN repository is available on http://127.0.0.1:8080/svn/, creds: user/password

Selenium grid console is available on http://127.0.0.1:4444/grid/console

## How to:
install virtualbox Version 5.0.10 r104061

install vagrant

    cd to_the_folder_containing_Vagrantfile
    $ vagrant up
    $ vagrant share

* //TODO set up users in Jenkins
* //TODO install tsung on the VM