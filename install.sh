#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
mkdir -p $HOME/.config/clash
echo ""

echo -e $b"➤ "$w"Clash For Termux Non Root"
echo ""

echo -e $b"➤ "$w" prepare for installing dependencies ..."
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"clash"$w
pkg install clash
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"unzip"$w
pkg install unzip
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"micro"$w
pkg install micro
echo ""

cd $HOME/ClashForTermux
sleep 2

echo -e $b"➤ "$w" coppying yacd-dashbord: "$g"yacd"$w
cp -r -f yacd-gh-pages.zip $HOME/.config/clash
echo ""

sleep 2

echo -e $b"➤ "$w" coppying proxy_provider: "$g"proxy"$w
cp -r -f proxy_provider.zip $HOME/.config/clash
echo ""

sleep 2

echo -e $b"➤ "$w" coppying rule_provider: "$g"rule"$w
cp -r -f rule_provider.zip $HOME/.config/clash
echo ""

sleep 2

echo -e $b"➤ "$w" coppying config.yaml: "$g"config"$w
cp -r -f config.yaml $HOME/.config/clash
echo ""

sleep 2

cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting yacd-dashbord: "$g"yacd"$w
unzip yacd-gh-pages.zip
echo ""

sleep 2

cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting proxy_provider: "$g"proxy"$w
unzip proxy_provider.zip
echo ""

sleep 2

cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting rule_provider: "$g"rule"$w
unzip rule_provider.zip
echo ""


sleep 2
rm -r -f yacd-gh-pages.zip
sleep 2
rm -r -f proxy_provider.zip
sleep 2
rm -r -f rule_provider.zip
sleep 2
cd
rm -r -f ClashForTermux
clash
clear
