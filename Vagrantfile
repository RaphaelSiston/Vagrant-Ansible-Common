Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.name = "Projeto Vagrant-Ansible-Common"
  end
  
  
  config.vm.box = "ubuntu/focal64"
  config.vm.network "public_network", ip: "192.168.10.16"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder "ansible/", "/ansible"
  config.vm.provision "shell", inline: <<-SHELL
  apt update
  apt install net-tools -y 
  apt install ansible -y
  hostnamectl set-hostname Projeto03
  ansible-playbook --connection=local /ansible/playbook.yml
SHELL
  
end
