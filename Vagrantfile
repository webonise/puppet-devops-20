# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.provision "puppet_server" do |puppettest|
    puppettest.puppet_server= "puppet-test"
  end
end
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.

  config.vm.hostname = "puppetagent-1"

  puppetagent1.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y vim htop

    sudo apt-get install wget --assume-yes;
    sudo rm *.deb
    sudo wget https://apt.puppetlabs.com/puppetlabs-release-pc1-`grep -i codename /etc/lsb-release | cut -d= -f2`.deb;
    sudo dpkg -i puppetlabs-release-pc1-`grep -i codename /etc/lsb-release | cut -d= -f2`.deb;
    sudo apt-get update;
    sudo apt-get install puppet-agent --assume-yes
    sudo apt-mark hold puppet-agent
    sudo ln -sfv /opt/puppetlabs/bin/* /usr/bin
  SHELL

  puppetagent1.vm.provision "puppet" do |puppetagentnode|
    puppetagentnode.module_path = "modules"
    puppetagentnode.environment = "test"
    puppetagentnode.environment_path = "environments"
    puppetagentnode.options = "--verbose --debug 10"
  end
  
end
