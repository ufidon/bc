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

```bash
# Inside Ubuntu, open a terminal, run the following commands
sudo apt update
sudo apt upgrade
sudo apt install terminator build-essential git cmake mono-complete
sudo apt install apt-transport-https dirmngr
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys  3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu vs-bionic main"  | sudo tee /etc/apt/sources.list.d/mono-official-vs.list
sudo apt update
sudo apt-get install monodevelop openjdk-11-jdk
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
