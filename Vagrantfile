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
    end
end