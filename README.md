# Ansible Hubot

> **NOTE**: 1.3.0 default change: This role now defaults to installing a
> Slack based hubot with the `hubot_adapter` variable. Changing the variable
> value to 'hipchat' will install for HipChat instead.

This is an [Ansible](http://www.ansible.com/) role for
[Hubot](http://hubot.github.com/), the wonderful chatting robot that is sure
to bring your team much delight and various values of increased productivity
throughout the livelong day!

By default this Hubot role uses the Slack adapter, but that can be easily
changed to work with HipChat by editing `defaults/main.yml`, updating the
value of *hubot_adapter*, and adding the appropriate environment variables 
to `templates/_hubot_{{hubot_adapter}}.env.j2`.

## Requirements

This Hubot role requires a Ubuntu or CentOS based Linux host and has been
tested to function on Ubuntu and CentOS with the following specific
software versions:

* Ansible: 1.9.3
* Hubot: GitHub Master
* Node.js: 0.10.37
* CentOS: 6
* Ubuntu: 14.04, 13.10, 13.04, 12.10, 12.04

## Works with Ansible Galaxy

This role is designed to be installed via the `ansible-galaxy` command
instead of being directly run from the git repository.

You should install it like this:

```
ansible-galaxy install brianshumate.hubot
```

You'll want to make sure you have write access to `/etc/ansible/roles/` since
that is where the role will be installed by default, or define your own
Ansible role path by creating a `$HOME/.ansible.cfg` file with these contents:

```
[defaults]
roles_path = <path_to_your_preferred_role_location>
```

Change `<path_to_your_preferred_role_location>` to a directory you have write
access to.

See the [ansible-galaxy](http://docs.ansible.com/galaxy.html) documentation
for more details.

## Role Variables

All role variables should be in `defaults/main.yml`.

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| hubot_node_version | 0.10.36 | Preferred Node.js version |
| hubot_dir      | `/home/<hubot_admin>/hubot` | The Hubot base directory |
| hubot_nvm_dir  | `/home/<hubot_admin>/.nvm` | Directory for Node Version Manager (nvm) installation |
| hubot_node_dir | `/home/<hubot_admin>/.nvm/v0.10.33/bin` |
| hubot_identity | hubot         | The bot's identity or short username |
| hubot_global_node_packages | List | List of Node.js dependency packages to install globally
| hubot_all_dirs | List | List of directories owned by Hubot admin user
| hubot_admin    | vagrant       | OS username of Hubot owner/admin |
| hubot_adapter  | slack       | Specify preferred chat adapter to use |
| hubot_description | "'A funny chatting robot'" | Description of bot |
| hubot_owner | "'Stephie Andretti <stephie@example.com>'" | Name of bot owner |
| hubot_node_packages | List | List of Node.js dependency packages to install |
| epel_package  | `epel-release-6-8.noarch.rpm` | EPEL reposiory package file name |
| epel_url      | "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm" | EPEL repository URL |
| hubot_ubuntu_os_packages | List | List of Ubuntu specific OS packages to install
| hubot_centos_os_packages | List | List of CentOS specific OS packages to install
|hubot_custom_scripts | List | A list of additional Hubot scripts to use

## Node Packages

The `hubot_node_packages` defines the following Node.js dependency packages:

* cheerio
* clark
* cleverbot-node
* htmlparser
* hubot-calculator
* hubot-hipchat-emoticons
* nodepie
* soupselect

If you add more Hubot scripts to the your own `_custom-scripts.yml` file,
be sure to add any Node.js dependencies required by the scripts
to the `hubot_node_packages` variable list as well.

The `hubot_centos_os_packages` and `hubot_ubuntu_os_packages` variables
define OS packages required by Hubot; they should be fine as-is.

### Scripts

You can enable Hubot scripts by uncommenting or adding them to
the `hubot_scripts` variable.

The `defaults/main.yml` file already contains a reasonable set of scripts
befitting something akin to an engineering team, but you can replace them
with your own list.

The optional commented out scripts in `defaults/main.yml`:

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
* reddit
* reddit-jokes.coffee
* reddit-random-top.coffee
* remind.coffee
* stallman.coffee
* twss
* wunderground.coffee
* xkcd.coffee
* zombies.coffee

## Configuration

First, edit the variables defined in `defaults/main.yml` as necessary.

Then, copy the necessary `templates/hubot_?.env.j2` to 
`templates/_hubot_?.env.j2` where *?* is your hubot_adapter value, and update
as necessary with the particular environment variables you need 
for your Hubot instance.

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

You can also pass variables in using the `--extra-vars` option
to the `ansible-playbook` command:

```
ansible-playbook -i hosts site.yml --extra-vars "hubot_admin=penelope hubot_adapter=hipchat hubot_identity=penelope hubot_owner='Penelope <penelope@example.com>' hubot_description='A stunning mermaid bot'"
```

## Dependencies

None

## License

Apache 2

## Author Information

[Brian Shumate](http://brianshumate.com)
