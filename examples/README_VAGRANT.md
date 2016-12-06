# Ansible Hubot with Vagrant

This is a role for [Hubot](http://hubot.github.com/), the wonderful chatting
robot that is sure to bring your team much delight and various values of
increased productivity.

This Hubot role connects to Slack by default, but it can also connect to
HipChat by editing `examples/site.yml`, updating the value of
*hubot_adapter*, and editing the appropriate HipChat environment variables in
`defaults/main.yml`.

## Requirements

This Hubot role requires a Debian or RHEL based Linux host and is tested to
function on Ubuntu with the following specific software versions:

* Ansible: 2.2.0.0
* VirtualBox: 5.1.10
* Vagrant: 1.9.0
* Hubot: GitHub Master
* Node.js: 6.9.1
* CentOS/RHEL 6
* Ubuntu: 14.04, 13.10, 13.04, 12.10, 12.04

## Hubot Acclimate!

Follow these directions for a Hubot development deployment on an Ubuntu
virtual machine with VirtualBox and Vagrant.

Ensure the following are installed:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)
* [Ansible](http://www.ansibleworks.com/docs/intro_installation.html)

These tools are optional, but highly recommended:

* [Virtualenv](http://www.virtualenv.org/)
* [Virtualenv Wrapper](https://bitbucket.org/dhellmann/virtualenvwrapper/)

### Hubot Configurate!

Visit the variables defined in `defaults/main.yml` for minimal configuration:

You can find more information in the main project [README](README.md)
about these variables.

Update the `examples/site.yml` playbook if you plan to use it and set
the following values:

* `hubot_adapter`: Adapter for your chat service (default is 'slack')
* `hubot_admin`: Operating system username of your bot owner
* `hubot_owner`: Hubot admin, ex: ("'Stephie Andretti <stephie@example.com>'")
* `hubot_identity`: Short username for your bot
* `hubot_description`: A description for your bot

### Hubot Activate!

After configuring your Hubot's environment variables, you should be able to
bootstrap the bot using a virtualenv with commands like following:

```
mkvirtualenv ansible
pip install ansible
cd ANSIBLE_ROLES_PATH/brianshumate.hubot/examples
vagrant up
```

If you'd prefer to install on CentOS, you can specify a different Vagrant
box as an environment variable like so:

```
mkvirtualenv ansible
pip install ansible
cd ANSIBLE_ROLES_PATH/brianshumate.hubot/examples
BOX_NAME="chef/centos-6.5" vagrant up
```

**NOTE**: `ANSIBLE_ROLES_PATH` above refers to the path to your Ansible
roles directory.
