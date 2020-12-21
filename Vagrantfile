# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.

  config.vm.hostname = "test-site"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y vim htop

    sudo apt-get install wget --assume-yes;
    sudo rm *.deb
    sudo wget https://apt.puppetlabs.com/puppetlabs-release-pc1-'grep -i codename /etc/lsb-release | cut -d= -f2'.deb;
    sudo dpkg -i puppetlabs-release-pc1-'grep -i codename /etc/lsb-release | cut -d= -f2'.deb;
    sudo apt-get update;
    sudo apt-get install puppet-agent --assume-yes
    sudo apt-mark hold puppet-agent
    sudo ln -sfv /opt/puppetlabs/bin/* /usr/bin
  SHELL

  config.vm.provision "puppet" do |puppet|
    puppet.module_path = "modules"
    puppet.environment = "test"
    puppet.environment_path = "environments"
    puppet.options = "--verbose --debug"
  end

end
