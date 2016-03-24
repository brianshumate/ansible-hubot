# Ansible Hubot

This is an [Ansible](http://www.ansible.com/) role for
[Hubot](http://hubot.github.com/), the wonderful chatting robot that is sure
to bring your team much delight and various values of increased productivity
throughout the livelong day!

By default this Hubot role uses the Slack adapter, but you can change the
role to work with another adapter like HipChat by editing `defaults/main.yml`,
updating the value of *hubot_adapter*, and adding the appropriate environment
variables to `defaults.main.yml` file.

## Requirements

This role requires a Ubuntu or CentOS based Linux host; it's known to function
on Ubuntu and CentOS with the following software versions:

* Ansible: 1.9.4
* Hubot: GitHub Master
* Node.js: 0.10.37
* CentOS: 6
* Ubuntu: 14.04, 13.10, 13.04, 12.10, 12.04

## Works with Ansible Galaxy

You can install this role with the `ansible-galaxy` command instead of
running directly from the git repository.

Install it like this:

```
ansible-galaxy install brianshumate.hubot
```

You'll want to make sure you have write access to `/etc/ansible/roles/` since
that is the default installation path, or define your own Ansible role path by
creating a `$HOME/.ansible.cfg` file with these contents:

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
| `hubot_adapter`  | slack       | Preferred chat adapter to use |
| `hubot_node_version` | 0.10.36 | Preferred Node.js version |
| `hubot_dir`      | path | Hubot base directory |
| `hubot_nvm_dir`  | path | Node Version Manager (nvm) installation directory |
| `hubot_node_dir` | path |
| `hubot_global_node_packages` | list | Node.js dependency packages to install globally |
| `hubot_all_dirs` | list | Directories owned by Hubot admin user |
| `hubot_env` | list | Environment variables for Hubot adapters |
| `hubot_admin`    | vagrant | OS username of Hubot owner/admin |
| `hubot_identity` | hubot | Bot user name |
| `hubot_owner` | "'Stephie Andretti <stephie@example.com>'" | Bot owner |
| `hubot_description` | "'A helpful chat robot'" | Bot description|
| `hubot_node_packages` | list | Node.js dependency packages to install |
| `external_scripts` | list | External third-party Hubot scripts to use |
| `hubot_external_git_scripts` | list | Scripts to clone from GitHub repositories |
| `hubot_custom_scripts` | list | Scripts to use from `files/scripts` directory |
| `hubot_scripts` | list | Base scripts included with Hubot to use |
| `epel_repo_gpg_key`  | path | EPEL GPG key URL |
| `epel_repo_url`      | URL | EPEL repository URL |

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

The `hubot_centos_os_packages` and `hubot_ubuntu_os_packages` variables
define OS packages required by Hubot; they should be fine as-is.

The `hubot_os_packages` defines following OS dependency packages:

* build-essential
* curl
* git-core
* libssl-dev
* libexpat1-dev
* redis-server

The role requires most of the above packages; the `redis-server` package
is an dependency of the Hubot `redis-brain` script.

### Scripts

You can enable Hubot scripts by uncommenting or adding them to
the `hubot_scripts` variable.

The project includes a reasonable set of custom scripts befitting something
akin to an engineering team, but if you prefer, you can replace them with
your own list of scripts.

The optional commented out scripts in `defaults/main.yml`:

* github-status.coffee
* wunderground.coffee

You will need to uncomment the appropriate variables in `defaults/main.yml`
to make use of these scripts and add your own.

If you add more custom scripts be sure to add any Node.js dependencies
required by the scripts to the `hubot_node_packages` variable list as well.

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

Update the `site.yml` playbook if you plan to use it and set `hubot_identity`
to the short user name of your bot.

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
## Test the role

You can test the role with [Molecule](http://molecule.readthedocs.org/en/master/).

The molecule configuration resides at the root of the role in the
`molecule.yml` file. This role is tested against Ubuntu Trusty 64 and
Centos 7, but you can add other platforms if needed.

To setup the test environment run the following commands:

```
mkvirtualenv -p $(which python2) molecule
pip install molecule ansible
```

To test the role run ``molecule test --platform trusty64`` or ``molecule test --platform centos7``.

## Dependencies

None

## License

Apache 2

## Author Information

[Brian Shumate](http://brianshumate.com)

## Contributors

See CONTRIBUTORS.md
