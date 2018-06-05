# Generic development environment

Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp-vagrant/ubuntu-16.04"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "..", "/home/vagrant/projects"

  # Install Git 2.x
  config.vm.provision "shell", inline: "apt-get install git -y"

  # Install Node.JS
  config.vm.provision "shell", path: "node.sh"

  # Install Docker v1.x and add user to docker group
  config.vm.provision "shell", path: "docker.sh"
  config.vm.provision "shell", inline: "sudo usermod -a -G docker vagrant"

end
