# DevOps_Exam readme and howto

Requirement: Git and Vagrant installed on your system.
Visual Studio Code is used as IDE and Windows 10 as OS.

---

#### 1. Set up our working environment:
1.1 Clone the repository to your working directory: C:\\\devops_exam by doing the following:

In VSC go to the devops_exam folder, open a terminal and type:

      git clone https://github.com/DevOpsTraining333/DevOps_Exam.git

1.2 Create two VM's using the Vagrant config file from our repository. First one will be the Jenkins server and the other one the nodejs client. Type in terminal:

      vagrant up

Git and Jenkins will be installed on the server node and Git on the client node. A user with name Jenkins and password "000000" will be added on the client.

---

#### 2. Set up Jenkins environment:
2.1 Open 192.168.56.111:8080 in your browser and log in to Jenkins. You can get the default password by logging to the Jenkins server (eg. via powershell) as user vagrant (password vagrant) and then copying the content of the /var/lib/Jenkins/secrets/initialAdminPassword

      ssh vagrant@192.168.56.111
      sudo cat /var/lib/Jenkins/secrets/initialAdminPassword

2.2 On the web interface click install suggested plugins, and create your first admin user by filling the fields. 

2.3 Make the nodejs client a Jenkins-slave by generating an ssh keypair: First ssh into the nodejs client:
      
      ssh vagrant@192.168.56.112

Set user jenkins as the owner of /index and its subdirectories??

Switch to jenkins user:

      su - jenkins

Generate ssh keypair to default folder without passphrase:

      ssh-keygen -t rsa -C "Jenkins Agent SSH key"

Save the key to a file called authorized_keys and give jenkins read and write rights over it:

      cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
      chmod 600 ~/.ssh/authorized_keys

On the web interface click manage jenkins > manage nodes > add new node.

Node name: nodejs

Permanent agent > click OK.

Label: nodejs

FS root: /var/lib/jenkins

Host: 192.168.56.112

Add Jenkins credentials

Kind: SSH username with private key

ID: nodejs_slave_ssh

Username: jenkins

Private key: enter directly

Now copy the content of /var/lib/jenkins/.ssh/id_rsa from the nodejs client to the Key field.

Set credentials to jenkins and Save.

#### 3. Create pipeline

From Jenkins_file from the repository, using index.js

