# change apt server
cp /etc/apt/sources.list /etc/apt/sources.list.bak
sed -i 's#http://archive.ubuntu.com#ftp://free.nchc.org.tw#' /etc/apt/sources.list
# http://archive.ubuntu.com/ubuntu
# ftp://free.nchc.org.tw/ubuntu

# add DNS server
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

apt-get update
# change timezone info
echo 'Asia/Taipei' > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

apt-get install -y git-core libcurl4-openssl-dev
