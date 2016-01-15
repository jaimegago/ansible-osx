# ansible-osx
Ansible playbooks to provision a developer Os X machine
pre requisites:
homebrew
ansible

Install homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install Ansible
brew install ansible

Run the playbook
ansible-playbook <playbook.yml> -i dummy-inv -K

