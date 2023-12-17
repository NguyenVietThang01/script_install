# !/bin/bash

#Check if this has git or not
if command -v git &> /dev/null
then
    echo "Git has been installed"
else
    echo "Installing git"
    sudo yum install -y git
fi

#Clone code from github server
git clone git@github.com:NguyenVietThang01/DoAn.git
cd DoAn/

# Check if this machine has python3 or not
if command -v python3 &> /dev/null
then 
    echo "Python3 has been installed"
else
    # install python3
    echo "Installing python3"
    sudo yum install -y python3
fi

if command -v python3 &> /dev/null
then
    python3 -m http.server 3000
fi
