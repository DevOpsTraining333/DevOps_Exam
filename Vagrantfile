Vagrant.configure("2") do |config|

    config.vm.define "jenkins" do |jenkins|
      #node1.vm.hostname = "jenkins"
      jenkins.vm.box = "geerlingguy/centos7"
      jenkins.vm.network "private_network", ip: "192.168.56.111"
      jenkins.vm.synced_folder ".", "/index"
      jenkins.vm.provider "virtualbox" do |vb|
        vb.name="jenkins-master"
        vb.gui = false
        vb.memory = "1024"
      end
      jenkins.vm.provision "shell", path:"./jenkins_installation.sh"
    end

    config.vm.define "nodejs" do |nodejs|
        #nodejs.vm.hostname = 'jenkins-student-slave'
        nodejs.vm.box = "geerlingguy/centos7"
        nodejs.vm.network "private_network", ip: "192.168.56.112"
        #nodejs.vm.synced_folder ".", "/devops_exam"
        nodejs.vm.provider "virtualbox" do |vb|
          vb.name = "jenkins-student-slave"
          vb.gui = false
          vb.memory = "1024"
        end
        nodejs.vm.synced_folder ".", "/nodejs_install"
        nodejs.vm.provision "shell", path:"./nodejs_installation.sh"
      end
end