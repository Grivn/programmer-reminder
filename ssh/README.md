# SSH

Connect remote server with ssh commands `ssh user@host` and enter your password.

## Generate Authorized Keys

How to connect the remote server without password?

Steps

Enter ssh keys directory 

```bash 
cd ~/,ssh
``` 

Generate key pairs, here, `server_auth.pub` and `server_auth`.

```bash 
ssh-keygen
```

Append the local public key into remote `authorized_keys` file the following commands.

```bash 
ssh user@host 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys' < ~/.ssh/server_auth.pub
ssh user@host 'chmod 700 -R ~/.ssh && chmod 600 ~/.ssh/authorized_keys'
```

What have we done?

1) Connect the remote server with password at first. 
2) Make sure there is a `~/.ssh` file on the server. 
3) Append the local public key `server_auth.pub` into the end of authorized key list of server.

## Nickname for Servers

Generally, we could connect remote server with `ssh user@xxx.xxx.xxx.xxx`.

We would like to create a configuration file for ssh to simplify the operation.

Modify the configuration file of ssh.

```bash
vim ~/.ssh/config
```

Template as following:

```bash
Host host # nickname
 HostName xxx.xxx.xxx.xxx # hostname
 User user # remote username
```

Then, we can connect it with command `ssh host`

## Script

Here is a script for ssh authorization `server_auth.sh`.

First, generate server_auth key pairs with `ssh-keygen`, here, we generate key pairs called `server_auth`.

You should make a file for your ip list, such as `ips_pub.txt`:

```txt
xxx.xxx.xxx.xxx
xxx.xxx.xxx.xxx
```

Then, trigger the authorization of user with command line:

```shell
sh ./server_auth.sh user ips_pub.txt ~/.ssh/server_auth.pub
```
