# Ansible Hubot with Vagrant

This is a role for [Hubot](http://hubot.github.com/), the wonderful chatting
robot that is sure to bring your team much delight and various values of
increased productivity.

By default this Hubot connects to HipChat, but that can be changed by editing
`defaults/main.yml`, updating the value of *hubot_adapter*, and adding the
appropriate environment variables to `templates/hubot.env.j2`.

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
[README]() about these variables.

Then, copy `ansible-hubot/templates/hubot.env.j2` to
`ansible-hubot/templates/_hubot.env.j2` and update as
necessary with the particular environment variables you need for your Hubot.

### Hubot Activate!

After configuring your Hubot's environment variables, you should be able to
bootstrap the bot using a virtualenv with commands like following:

```
cd ansible-hubot
mkvirtualenv ansible
pip install ansible
vagrant up
```

