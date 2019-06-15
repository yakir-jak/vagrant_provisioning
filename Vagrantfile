Vagrant.configure("2") do |config|
  config.vm.box = "generic/fedora28"
  config.vm.provision "shell", path: "apache_install.sh" 
# config.vm.provision "shell", path: "apache_content.sh"
  config.vm.provision "file", source: "/var/www/cgi-bin/index.py", destination: "/var/www/cgi-bin"
  config.vm.network "private_network", ip: "10.0.0.100"
  config.vm.network "forwarded_port", guest: 80, host: 8080
end
