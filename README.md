# Ansible Hubot

This is an [Ansible](http://www.ansible.com/) role for
[Hubot](http://hubot.github.com/), the wonderful chatting robot that is sure
to bring your team much delight and various values of increased productivity
throughout the livelong day!

By default this Hubot is configured for HipChat, but that can be easily
changed by editing `defaults/main.yml`, updating the value of
*hubot_adapter*, and adding the appropriate environment variables to
`templates/hubot.env.j2`.

## Requirements

This Hubot role requires a Debian based Linux host and has been tested to
function on Ubuntu with the following specific software versions:

* Ansible: 1.8.2
* Hubot: GitHub Master
* Node.js: 0.10.33
* CentOS/RHEL 6
* Ubuntu: 13.10, 13.04, 12.10, 12.04

## Role Variables

All variables are specified in `defaults/main.yml` and `vars/main.yml`.

### Defaults

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| hubot_admin    | vagrant       | OS username of Hubot owner/admin |
| hubot_adapter  | hipchat       | Specify preferred chat adapter to use |
| hubot_node_version | 0.10.25 | Preferred Node.js version |
| hubot_dir      | `/home/<hubot_admin>/hubot` | The Hubot base directory |
| hubot_nvm_dir  | /home/{{ hubot_admin }}/nvm | Directory for Node Version Manager (nvm) installation |
| hubot_node_dir | {{ hubot_nvm_dir }}/v{{ hubot_node_version }}/bin |
| hubot_identity | hubot         | The bot's identity or short username |
| hubot_description | "'A funny chatting robot'" | Description of bot |
| hubot_owner | "'Stephie Andretti <stephie@example.com>'" | Name of bot owner |
| hubot_node_packages | List | List of Node.js dependency packages to install |
| hubot_global_node_packages | List | List of Node.js dependency packages to install globally
| hubot_all_dirs | List | List of directories owned by Hubot admin user

The following Node.js dependency packages are defined in
`hubot_node_packages` and installed by default to support the additional Hubot
scripts included in this role:

* cleverbot-node
* htmlparser
* nodepie
* soupselect
* hubot-hipchat
* hubot-scripts

If you add more Hubot scripts to the list defined in the **Variables**
section, be sure to add any Node.js dependencies required by the scripts
to the `hubot_node_packages` list as well.

The following OS dependency packages are defined in `hubot_os_packages` and
installed by default:

* build-essential
* curl
* git-core
* libssl-dev
* libexpat1-dev
* redis-server

Most of these packages are required with the exception of `redis-server`,
which is a dependency of the Hubot `redis-brain` script.

### Variables

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| epel_package:  | `epel-release-6-8.noarch.rpm` | EPEL reposiory package file name |
| epel_url:      | "http://dl.fedoraproject.org/pub/epel/6/x86_64/{{ epel_package }}" | EPEL repository URL |
| hubot_debian_os_packages | List | List of Debian/Ubuntu specific OS packages to install
| hubot_redhat_os_packages | List | List of Red Hat/CentOS specific OS packages to install
|hubot_scripts | List | A list of additional Hubot scripts to use

The following relatively conservative additional Hubot scripts befitting
something akin to an Engineering team are defined in `hubot_scripts` as
part of `vars/main.yml` and installed by default:

* achievement_unlocked.coffee
* ackbar.coffee
* applause.coffee
* ascii.coffee
* base64.coffee
* bees.coffee
* botsnack.coffee
* cat.coffee
* cleverbot.coffee
* coin.coffee
* dealwithit.coffee
* decide.coffee
* fortune.coffee
* github-status.coffee
* grumpycat.coffee
* hackernews.coffee
* megusta.coffee
* ping.coffee
* redis-brain
* reddit
* reddit-jokes.coffee
* reddit-random-top.coffee
* remind.coffee
* stallman.coffee
* twss
* wunderground.coffee
* xkcd.coffee
* zombies.coffee

Feel free to remove or add scripts to your heart's content.

## Configuration

At a minimum, modify the variables defined in the following files as
necessary:

* `defaults/main.yml`
* `vars/main.yml`

Then, copy `templates/hubot.env.j2` to `templates/_hubot.env.j2` and update as
necessary with the particular environment variables you need for your Hubot.

Copy `hosts.example` to `hosts` and edit it to update the values for your
Hubot host. Be sure to change the following values:

* `0.0.0.0`
* `ubuntu`
* `~/.ssh/hubot_id`

Finally, update the `site.yml` playbook if you plan to use it and set
`hubot_identity` to the short username of your bot.

## Example Playbook

After configuration a basic Hubot installation and activation is possible
using the included `site.yml` playbook:

```
ansible-playbook -i hosts site.yml
```

You can also simply pass variables in using the `--extra-vars` option
to the `ansible-playbook` command:

```
ansible-playbook -i hosts site.yml --extra-vars "hubot_admin=penelope hubot_adapter=slack hubot_identity=penelope hubot_owner='Penelope <penelope@example.com>' hubot_description='A stunning mermaid bot'"
```

## Dependencies

None

## License

Apache 2

## Author Information

[Brian Shumate](http://brianshumate.com)

