# its581
course materials and references for its581

## Lab00: Setup lab environment

_Description_
```c
In this lab,  setup two Ubuntu virtual machines and put them in a NAT network of VirtualBox.
```

_Steps_
1. Download and install [VirtualBox](https://www.virtualbox.org) and VirtualBox Extension Pack.
2. Create VMS, NAT network, download [Ubuntu](https://ubuntu-mate.org/) ISOs and softwares
3. Setup Ubuntu & software
4. Open a terminal, run the following commands

```bash
# Update Ubuntu and install system build tools
sudo apt update
sudo apt upgrade
sudo apt install terminator build-essential git cmake 
sudo apt install apt-transport-https dirmngr

# Install JDK
sudo apt install  default-jdk libreoffice-java-common 
```


5. Install zotero. 
  * Download [zotero](https://www.zotero.org/download/) for Linux.
  * Install Firefox connector: [Zotero Connector](https://www.zotero.org/download/)
  
```bash
# Install zotero, go to the fold where zotero for linux is saved

# Change the following file name(Zotero-5.0.88_linux-x86_64.tar.bz2) to yours
tar jxf Zotero-5.0.88_linux-x86_64.tar.bz2

# Check the name(Zotero_linux-x86_64) of the unarchived folder of zotero, change it to yours
sudo chown $USER:$USER /opt
mv Zotero_linux-x86_64 /opt/zotero
sudo cp /opt/zotero/zotero.desktop /usr/share/applications/
# logout then login Ubuntu
# run zotero from start menu and install Zotero LibreOffice plugin
```

6. Share host folder with virtual machine
```bash
# On the vm runnin window, from menu shared folders->shared folders settings, setup a shared folder,
# suppose the name of the shared folder is blockchain
# Inside a terminal window, run the following commands
cd
mkdir host
sudo adduser $USER vboxsf
# logout then login Ubuntu
# mount the shared folder on the host directory, a disk icon named host will pop on the desktop
cd
sudo mount -t vboxsf -o rw,uid=1000,gid=1000 blockchain host

# show the contents of the shared folder
ls host

# before power off the virtual machine, umount the shared folder first
sudo umount host

```

**Youtube Videos** 
* [Create empty virtual machines for Ubuntu & Windows Server 2019 in VirtualBox 6](https://youtu.be/3PbnBVNWXpk)
* [Install Ubuntu 18.04LTS in VirtualBox 6](https://youtu.be/3BHsizTRUg0)
* [Install Windows Server 2019 in VirtualBox 6](https://youtu.be/fQZFoSTSuPM)
* [Create SEED Ubuntu 16.04 virtual machines and NAT network](https://youtu.be/pwSlVJSCpu0)
* [How to run VirtualBox virtual machines on other computers with VirtualBox?](https://youtu.be/Ps30RJ1MzgQ)
* [Compile C/C# code on Windows Server 2019 and Ubuntu 18.04LTS](https://youtu.be/ajTLkAqamKs)

## Linux basics
* [Unix & Linux introduction](https://bootlin.com/doc/legacy/command-line/)
* [The Linux Command Line](http://linuxcommand.org/tlcl.php)
* [The Linux Documentation Project \(LDP\)](https://www.tldp.org/guides.html)

## LibreOffice
* [LibreOffice](https://www.libreoffice.org/)
* [LibreOffice documentation](https://documentation.libreoffice.org/en/english-documentation/)
* [zotero - Your personal research assistant](https://www.zotero.org/)
