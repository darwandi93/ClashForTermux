# Clash For Termux Without Root

# Install
- apt update && apt upgrade -y

- apt install git -y

- git clone https://github.com/darwandi93/ClashForTermux.git

- cd ClashForTermux && bash install.sh

- cd

# Edit akun vpn1.yaml
- ketik nano .config/clash/proxy_provider/vpn1.yaml

-   name: "vpn1"
-   server: HOST_SERVER
-   port: 443
-   type: vmess
-   uuid: ISI_UUID
-   alterId: 0
-   cipher: auto
-   tls: true
-   skip-cert-verify: true
-   network: ws
-   ws-opts:
-     path: /vvip
-     headers:
-       Host: BUG_SNI
    
# Edit akun vpn2.yaml
- ketik nano .config/clash/proxy_provider/vpn2.yaml

-   name: "vpn2"
-   type: trojan
-   server: HOST_SERVER
-   port: 443
-   password: PASS_SERVER
-   udp: true
-   sni: BUG_SNI
-   skip-cert-verify: true
    
# Running Clash
- Sebelum di running dahulukan lah, edit config
- Command :
- start Clash
- clash ----> enter untuk menjalankan

# Open Yacd-Dashboard
- Buka Chrome
- http://127.0.0.1:9090/ui/#/proxies

# Setting IPTABLE Without Root
- Buka pengaturan jaringan
- masuk ke Access Point Names (APN)
- APN : Bebas (Reccomended : internet/aha)
- Proxy : 127.0.0.1
- Port : 7890

# Contact Me
- Bila masih bingung bisa di tanyakan 
- Youtube  : https://youtube.com/channel/UCEivnkOPZQsr8UzPmnH8a2w
- Telegram : https://t.me/DWD_93
