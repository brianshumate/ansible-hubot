##v1.0.0

- Updated tasks with more npm module usage
- Updated documentation

##v1.0.1

- Accept GitHub host key for now until a better way is determined

## v1.0.2

- Revert lost npm module usage

## v1.0.3

- Revert accept host key

## v1.0.4

- Fix directory ownership issues
- Added missing files scripts
- Documentation updates

## v1.0.5

- Updated tested software versions
- Updated documentation

## v1.0.6

- Updated tested software versions
- Updated documentation

## v1.1.0

- Support for new Hubot Yeoman deployment method
- Using hashicorp/precise64 box for vagrant builds
- Tasks cleanup
- Updated supported versions
- Updated documentation

## v1.2.0

- Added initial support for RHEL/CentOS for brianshumate/ansible-hubot/issues/2
- Updated documentation

## v1.2.1

- Tidied external scripts
- Added slack variable
- Updated documentation

## v1.2.2

- Fixed external scripts
- Moved additional script collection to private variables
- Updated documentation

## v1.2.3

- Fixed custom scripts variable inclusion
- Updated documentation

## v1.2.4

- Use generator-hubot release 0.2.0

## v1.2.5

- Install NVM to expected directory (`~/.nvm`)
- Updated documentation

## v1.2.6

- Updated documentation

## v1.2.7

- Update Vagrantfile

## v1.2.8

- Updated for new private_key location
- Switch to ansible_os_distribution variable
- Rename tasks
- Update documentation
- Minimal hubot_custom_scripts variable (hi RMS)

## v1.2.9

- Ubuntu 14.04
- Updated documentation

## v1.2.10

- Stop service before decommission task
- Update versions
- Update documentation

## v1.2.11

- Updated documentation

## v1.3.0

- Add Slack support
- Default adapter changed to 'slack'
- Prefer "private" (files) first for inclusion
- Update variables
- Update documentation
- Clean up cruft

## v1.4.0

- Move all variables to defaults (thanks, @joestewart!)
- Simplify startup script (thanks, @joestewart!)
- Generate external scripts (thanks, @joestewart!)
- Updated docs

## v1.5.0

- Refactor the tasks to avoid duplicated
- Make the role idempotent
- Execute the tasks with the appropriate user
- Make the role testable with molecule
- Update the docs

## v1.5.1

- Enable some Hubot scripts to provide a minimum of out-of-the-box
  functionality since their dependencies are being installed already
- Fix some typos
- Update documentation

## v1.5.2

- More docs updates regarding default scripts

## v1.5.3

- Merge feature to allow for git checkouts of scripts (thanks @joestewart )
- Update some variables
- Update documentation about git checkout scripts

## v1.6.0

- Use become / become_user
- Install init script as root on Red Hat (thanks @craigw)
- Cleanup Hubot scripts (thanks @craigw)
- YAML file headings

## v1.6.1

- Ensure service is started at end of tasks (thanks @emanuelis)
- Add systemd unit (thanks @emanuelis)
- Additional node modules
- Use become
- Make playbook filename a variable in Vagrantfile

## v1.6.2

- Ensure service is restarted after environment changes (thanks @emanuelis)

## v1.6.3

- More granular admin user directory variables
- Become user fix
- Updated documentation

## v1.7.0

- Update to Node 4.x
- Remove all scripts which do not have packaged versions
- Remove deprecated hubot-scripts.json functionality and variables
- Update documentation

## v1.7.1

- Remove hubot-scripts package (it was breaking startup)
- More defaults cleanup
- Fix contributors page
- Clean up custom scripts - with hubot_custom_scripts == true all scripts in
  files/scripts will be installed as well

## v1.7.2

- Fix bare variable issue
- Fix custom scripts

## v1.7.3

- Fix more bare variable issues

## v1.8.0

- Update Node version
- Update tested dependency versions
- Add metrics
- Workaround issue with Ansible npm module [GH-2128]
- Update README

## v1.8.1

- Add initial tests / Travis
