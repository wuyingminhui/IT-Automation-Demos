# IT-Automation-Demos: Ansible

###Getting Started
```Swfit
$ pip install ansible
#for debian
$ sudo apt-add-repository ppa:rquillo/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
#for centos
$ sudo yum install ansible
```

You can run the demo with 
```Swfit
ansible-playbook playbooks/deploy.yml -i hosts -k -v
```

###File Struct
```Swfit
├── ansible.cfg          // ansible playbook config
├── group_vars
│   └── all              // ansible playbook public variables
├── hosts                // ansible playbook hosts inventory file
├── playbooks
│   └── deploy.yml       // ansible playbook entry
└── roles
    └── common
        ├── defaults     
        ├── handlers
        ├── meta
        ├── tasks        // if tasks/main.yml exsits, the tasks in the file will be added to play
        ├── templates
        └── vars         // if vars/main.yml exsits, the variables in the file will be added to play
```

###Contributing
All contributions are welcome!
