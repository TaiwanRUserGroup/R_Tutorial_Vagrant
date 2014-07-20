# change apt server
cp /etc/apt/sources.list /etc/apt/sources.list.bak
sed -i 's#http://archive.ubuntu.com#ftp://free.nchc.org.tw#' /etc/apt/sources.list
# http://archive.ubuntu.com/ubuntu
# ftp://free.nchc.org.tw/ubuntu
apt-get update

# change timezone info
echo 'Asia/Taipei' > /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata

apt-get install -y git-core
