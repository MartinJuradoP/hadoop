Vagrant.configure(2) do |config|
  config.ssh.insert_key = false 
  config.vm.define "nodo1" do |nodo1|
    nodo1.vm.box = "geerlingguy/centos7"
    nodo1.vm.box_version = "1.2.3"
    nodo1.vm.network "private_network", ip: "192.168.199.2"
    nodo1.vm.hostname = "nodo1.hdfs.com"
    nodo1.vm.provision "shell", path: "install/installserver.sh"
    nodo1.vm.network "forwarded_port", guest: 8080, host: 8080
    nodo1.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 2
      v.customize ['modifyvm', :id, '--cableconnected1', 'on']
    end
  end
  config.vm.define "nodo2" do |nodo2|
    nodo2.vm.box = "geerlingguy/centos7"
    nodo2.vm.box_version = "1.2.3"
    nodo2.vm.network "private_network", ip: "192.168.199.3"
    nodo2.vm.hostname = "nodo2.hdfs.com"
    nodo2.vm.provision "shell", path: "install/installagent.sh"
    nodo2.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 2
      v.customize ['modifyvm', :id, '--cableconnected1', 'on']
    end
  end
  config.vm.define "nodo3" do |nodo3|
    nodo3.vm.box = "geerlingguy/centos7"
    nodo3.vm.box_version = "1.2.3"
    nodo3.vm.network "private_network", ip: "192.168.199.4"
    nodo3.vm.hostname = "nodo3.hdfs.com"
    nodo3.vm.provision "shell", path: "install/installagent.sh"
    nodo3.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
      v.customize ['modifyvm', :id, '--cableconnected1', 'on']
    end
  end
end