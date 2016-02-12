
yum -q install -y ksh tcsh zsh

if [ ! -z "$BASH" ]; then
   echo "Shell is bash version $BASH_VERSION"
elif [ ! -z "$ZSH_NAME" ]; then
   echo "Shell is zsh version $ZSH_VERSION"
elif [ ! -z "$KSH_VERSION" ]; then
   echo "Shell is ksh version $KSH_VERSION"
else
   echo "Unknown shell"
   exit 1
fi
#ps auxwww | grep bootstrap
