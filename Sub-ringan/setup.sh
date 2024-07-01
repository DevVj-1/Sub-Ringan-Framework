# ! /bin/bash



echo "Wellcome to Sub-Ringan Setup!"
echo ""

for arg in "$@"
do
    case $arg in
        -h|--help)
        echo "Sub-Ringan-Framework 🛐 Dependency Installer"
        echo " "
        echo "$0 [options]"
        echo " "
        echo "options:"
        echo "-h, --help                show brief help"
        echo "-t, --toolsdir            tools directory, defaults to '/opt'"
        echo ""
        echo "Note: If you choose a non-default tools directory, please adapt the default in the setup.sh file or pass the -t flag to ensure it finds the right tools."
        echo ""
        echo "example:"
        echo "$0 -t /opt"
        exit 0
        ;;
        -t|--toolsdir)
        toolsDir="$2"
        shift
        shift
        ;;
    esac
done

echo "\33[1;32mInstalling Dependencies..."

# Golang
go version &> /dev/null
if [ $? -ne 0 ]; then
    echo "[*] Installing Golang..."
    wget -q https://golang.org/dl/go1.20.4.linux-amd64.tar.gz
    tar -xvf go1.20.4.linux-amd64.tar.gz -C /usr/local >/dev/null
    rm -rf ./go1.20.4.linux-amd64.tar.gz >/dev/null
    export GOROOT="/usr/local/go"
    export GOPATH="$homeDir/go"
    export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin:${PATH}"
else
    echo "[*] Skipping Golang install, already installed."
    echo "[!] Note: This may cause errors. If it does, check your Golang version and settings."
fi


# Go packages
echo "\33[1;34m[*] Installing various Go packages..."
export GO111MODULE="on"
go install github.com/tomnomnom/waybackurls@latest
go install github.com/tomnomnom/gf@latest &>/dev/null
go install github.com/tomnomnom/qsreplace@latest &>/dev/null

# HTTPX
echo "\33[1;35m[*] Installing HTTPX..."
wget -q https://github.com/projectdiscovery/httpx/releases/download/v1.3.1/httpx_1.3.1_linux_amd64.zip
unzip -j httpx_1.3.1_linux_amd64.zip -d /usr/bin/ httpx >/dev/null
rm httpx_1.3.1_linux_amd64.zip

# Amass
echo "\33[1;36m[*] Installing Amass..."
wget -q https://github.com/owasp-amass/amass/releases/download/v3.23.2/amass_Linux_amd64.zip
unzip -q amass_Linux_amd64.zip
mv amass_Linux_amd64 amass
rm amass_Linux_amd64.zip
cp $toolsDir/amass/amass /usr/bin/amass

# Gf-patterns
echo "\33[1;33m[*] Installing Gf-patterns..."
git clone -q https://github.com/1ndianl33t/Gf-Patterns
mkdir "$homeDir"/.gf
cp "$toolsDir"/Gf-Patterns/*.json "$homeDir"/.gf


# Persist configured environment variables via global profile.d script
echo "\33[1;35m[*] Setting environment variables..."
if [ -f "$homeDir"/.bashrc ]
then
    { echo "export GOROOT=/usr/local/go";
    echo "export GOPATH=$homeDir/go";
    echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin';
    echo "export GO111MODULE=on"; } >> "$homeDir"/.bashrc
fi

if [ -f "$homeDir"/.zshrc ]
then
    { echo "export GOROOT=/usr/local/go";
    echo "export GOPATH=$homeDir/go";
    echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin';
    echo "export GO111MODULE=on"; } >> "$homeDir"/.zshrc
fi

echo "\33[1;32m[*] SETUP FINISHED."
exit 0
#
