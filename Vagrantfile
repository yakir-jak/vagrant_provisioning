Vagrant.configure("2") do |config|
  config.vm.box = "generic/fedora28"
  config.vm.provision "shell", path: "script.sh"
  config.vm.provision "file", source: "~/path/to/host/folder", destination: "$HOME/remote/newfolder"
  config.vm.network "forwarded_port", guest: 80, host: 8080
end
