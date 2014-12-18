# Ansible Hubot with Vagrant

This is a role for [Hubot](http://hubot.github.com/), the wonderful chatting
robot that is sure to bring your team much delight and various values of
increased productivity.

By default this Hubot connects to HipChat, but that can be changed by editing
`defaults/main.yml`, updating the value of *hubot_adapter*, and adding the
appropriate environment variables to `templates/hubot.env.j2`.

## Requirements

This Hubot role requires a Debian based Linux host and has been tested to
function on Ubuntu with the following specific software versions:

* Ansible: 1.8.2
* VirtualBox: 4.3.20
* Vagrant: 1.6.5
* Hubot: GitHub Master
* Node.js: 0.10.33
* CentOS/RHEL 6
* Ubuntu: 13.10, 13.04, 12.10, 12.04

## Hubot Acclimate!

Follow these directions for a Hubot development deployment on Mac OS X
to an Ubuntu virtual machine on VirtualBox with Vagrant.

Install the following on the Mac that will be used for Hub development,
testing, or trying to take over the world:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)
* [Ansible](http://www.ansibleworks.com/docs/intro_installation.html)

These tools are optional, but highly recommended:

* [Virtualenv](http://www.virtualenv.org/)
* [Virtualenv Wrapper](https://bitbucket.org/dhellmann/virtualenvwrapper/)

### Hubot Configurate!

At a minimum, visit the variables defined in the following files:

* `defaults/main.yml`
* `vars/main.yml`

There is more information in the main project
[README](README.md) about these variables.

Then, copy `templates/hubot.env.j2` to `templates/_hubot.env.j2` and update as
necessary with the particular environment variables you need for your Hubot.

Finally, update the `site.yml` playbook if you plan to use it and set
`hubot_identity` to the short username of your bot.

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
