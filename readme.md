# Installation of pre-requisite tools

## Vagrant
[Vagrant install](https://www.vagrantup.com/downloads.html)

## VirtualBox
[VirtualBox install](https://www.virtualbox.org/wiki/Downloads)

## Ruby Virtual Environments
Choose betwen [RVM](https://rvm.io/rvm/install) and [RBenv](http://octopress.org/docs/setup/rbenv/)
A very good idea to use one of these, makes life easier.

## Ruby
[Ruby install](https://www.ruby-lang.org/en/downloads/)

## RubyGems
[RubyGems install](https://rubygems.org/pages/download)

## Ansible
[Ansible install](http://docs.ansible.com/ansible/latest/intro_installation.html#installation)

## Bundler
[Bundler install](http://bundler.io/)


# Sequence of tasks

```
gem install bundler
bundle
vagrant plugin install ansible #Install the Ansible plugin for Vagrant
```

# Check that everything is installed:

```bash
vagrant --version # Vagrant 1.9.3
ruby --version # ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin16]
gem --version # 2.6.12
ansible --version # ansible 2.3.1.0
bundle --version # Bundler version 1.15.3
```
