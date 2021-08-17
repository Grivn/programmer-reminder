# Ladder Info

## Service

[shadowsocks servers](https://portal.shadowsocks.nz/)

[shadowsocks clients](https://dl.trojan-cdn.com/trojan/)

## Linux CLI

install the proxychains `sudo apt-get install proxychains`

modify the configuration `vim /etc/proxychains.conf`

find the port to listen `socks5  127.0.0.1 1080  //modify '1080' to your own port`

how to use? `proxychains cmd`

## MacOS Iterm

generate function in .zshrc or .bash_profile

notes: the port for clashX is 7890, if you would like to use others, such as trojan and ssr, please modify the port.

```shell script
function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:7890"
    export https_proxy=$http_proxy
    #export all_proxy=socks5://127.0.0.1:7890 # or this line
    echo -e "proxy opened"
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "proxy closed"
}
```

## SwitchyOmega

how to install it without ladder? 

[git repo](https://github.com/FelisCatus/SwitchyOmega/releases)
