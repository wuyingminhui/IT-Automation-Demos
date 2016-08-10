# IT-Automation-Demos: SaltStack

###Getting Started
```Swfit
// install salt-master
yum install python-jinja2 salt-master
// install salt-minion
yum install python-jinja2 salt-minion
```
###Configuration
salt-minion configuration:
```Swfit
// change the ip to your salt-master ip
master: 130.120.39.22
// change the id
id: SANDBOX_A_130_120_39_22
```
Then restart your service
```Swift
service salt-minion start
```

salt-master configuration:
```Swfit
// add groups to your master config
nodegroups:
   SANDBOX: 'L@SANDBOX_A_130_120_39_22'
```
Then restart your service
```Swift
service salt-master start
```

Test your salt
```Swfit
# salt-key -L
Unaccepted Keys:SANDBOX_A_130_120_39_22
Rejected Keys:
# salt-key -A
```

Copy the demo SaltStack folder to your /srv/salt dir (the default dir in master config)
```Swfit
// to run the demo
salt -N SANDBOX state.sls initRun (you can add 'test=True' to check your script)
```

###File Struct
```Swfit
├── initRun
│   └── init.sls  // SaltStack will excute initRun.init by default
└── top.sls       // SaltStack entry
```

###Contributing
All contributions are welcome!
