Vagrant.configure('2') do |config|
vm_box = 'ubuntu/focal64'
config.vm.define :master, primary: true  do |master|
    master.vm.box = vm_box
    master.vm.box_check_update = true
    master.vm.network :private_network, ip: "10.10.10.200"
    master.vm.network :forwarded_port, guest: 8080, host: 8080
    master.vm.network :forwarded_port, guest: 5000, host: 5000
    master.vm.hostname = "master"
    master.vm.synced_folder ".", "/vagrant"
    master.vm.provision "shell", path: "install_docker.sh"
    master.vm.provision "shell", path: "master.sh"
    master.vm.provider "virtualbox" do |vb|
        vb.name = "master"
        vb.memory = "2048"
        end
    end
(1..3).each do |i|
    config.vm.define "node0#{i}" do |node|
        node.vm.box = vm_box
        node.vm.box_check_update = true
        node.vm.network :private_network, ip: "10.10.10.20#{i}"
        node.vm.hostname = "node0#{i}"
        node.vm.synced_folder ".", "/vagrant"
        node.vm.provision "shell", path: "install_docker.sh"
        node.vm.provision "shell", path: "node.sh"
        node.vm.provider "virtualbox" do |vb|
            vb.name = "node0#{i}"
            vb.memory = "1024"
            end
        end
    end
end