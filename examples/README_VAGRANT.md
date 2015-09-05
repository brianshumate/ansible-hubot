# Ansible Hubot with Vagrant

This is a role for [Hubot](http://hubot.github.com/), the wonderful chatting
robot that is sure to bring your team much delight and various values of
increased productivity.

This Hubot role connects to Slack by default, but it can also connect to
HipChat by editing `defaults/main.yml`, updating the value of 
*hubot_adapter*, and adding the appropriate environment variables to 
`templates/hubot_hipchat.env.j2`.

## Requirements

This Hubot role requires a Debian based Linux host and is tested to
function on Ubuntu with the following specific software versions:

* Ansible: 1.9.3
* VirtualBox: 4.3.30
* Vagrant: 1.7.2
* Hubot: GitHub Master
* Node.js: 0.10.37
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

Then, copy the necessary `templates/hubot_?.env.j2` to `templates/_hubot_?.env.j2` where *?* is your hubot_adapter value, and update as necessary with the
particular environment variables you need for your Hubot.

Finally, update the `site.yml` playbook if you plan to use it and set
the following:

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
vagrant up
```

If you'd prefer to install on CentOS, you can specify a different Vagrant
box as an environment variable like so:

```
mkvirtualenv ansible
pip install ansible
BOX_NAME="chef/centos-6.5" vagrant up
```
