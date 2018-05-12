# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
$node_num = 1
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "base"

  config.vm.box = "./centos-7.4-x86_64-minimal.box"

config.vm.define "chef-server" do |lb|
	lb.vm.network :private_network, ip: "192.168.56.100"
	lb.vm.hostname = "chef-server"
end

(1..$node_num).each do |i|
	config.vm.define "node-#{i}" do |node|
		node.vm.network :private_network, ip: "192.168.56.10#{i}"
		node.vm.hostname = "node-#{i}"
  	end
end

end
