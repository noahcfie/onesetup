# ONESETUP

## Supported Platforms

- MacOS M1, M2, M3

## Getting Started
1. First you need to fork this repository to get your own onesetup version
2. Run installation script
`"bash" -c "$(curl -fsSL https://raw.githubusercontent.com/<GITHUB_USERNAME>/onesetup/main/bin/install)"`
3. Doublecheck that the master password you wanna use for secret encryption is stored in /opt/onevault/onesetup.secret
4. Encrypt your ssh keys & config files inside ~/.ssh with ansible vault (authorized_keys, config, known hosts & private & public ssh keys)
`cat $HOME/.ssh/<ssh_key_name> | ansible-vault encrypt_string --stdin-name <ssh_key_name> --vault-id "onesetup@/opt/onevault/onesetup.secret"`
5. Replace the encrypted secrets inside the .yml files of /opt/onesetup/group_vars/encrypted with your own
6. Execute the onesetup command and enjoy your IaC automation environment! :x
`onesetup`

## Command Usage

`onesetup` run without parameters to spin up the complete playbook
`onesetup --skip "tag1, tag2"` --skip can be used to pass tags (role names) you wanna skip

## Roadmap

- Fedora Linux Support
- Intel Based MacOS Support
- Additional command parameters
- Semi-Automate the secret encryption & storage process with a wizard
