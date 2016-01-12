A collection of scripts for setting up a vagrant box based on [Scotch](https://box.scotch.io), with additional tools.

## Usage

```ruby
Vagrant.configure("2") do |config|
	config.vm.box = "scotch/box"
	config.vm.network "private_network", ip: "192.168.10.10"
	config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

	config.vm.provision "shell", path: "https://raw.githubusercontent.com/dan1elhughes/provision-vagrant/master/main.sh"
	config.vm.provision "ip", type: "shell", path: "https://raw.githubusercontent.com/dan1elhughes/provision-vagrant/master/ip.sh"
end
```
