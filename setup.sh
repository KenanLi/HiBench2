echo "Hello World!"
yes | sudo yum groupinstall "Java"
yes | sudo yum groupinstall "Development tools"
mkdir ~/maven
wget http://apache.petsads.us/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz -P ~/maven/
tar zxvf ~/maven/apache-maven-3.0.5-bin.tar.gz
mv -f apache-maven-3.0.5 ~/maven
export M2_HOME=~/maven/apache-maven-3.0.5
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
git clone https://github.com/intel-hadoop/HiBench.git
#curl -L http://install.ohmyz.sh | sh
wget --no-check-certificate https://raw.githubusercontent.com/KenanLi/HiBench2/master/hibench-config.sh
#chsh -s `which zsh`
mv ~/hibench-config.sh ~/HiBench/bin/
yes | sudo yum install zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
/bin/zsh
