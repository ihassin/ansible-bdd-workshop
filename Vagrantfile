# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'.freeze
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.define 'ansible' do |ansible|
    ansible.vm.hostname = 'ansible'
    ansible.vm.network 'private_network', ip: '33.33.33.36'
    ansible.vm.provider 'virtualbox' do |provider|
      provider.name = 'ansible'
      provider.customize ['modifyvm', :id, '--memory', '512']
    end

    ansible.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'playbook.yml'
      ansible.inventory_path = 'inventory'
      ansible.host_key_checking = false
      ansible.sudo = true
    end
  end

end
