# lod_vnc

Some scripts to make VNC connections work on Linux on DeX. Tested okay on a Samsung Galaxy Note 9.

## Getting Started

These instructions will get you a copy of the project up and running.

### Prerequisites

We have to remove preinstalled tightvncserver before we can reinstall again. Caution: linux-on-dex gets removed too.

```
sudo apt-get update
sudo apt-get upgrade

sudo apt-get remove tightvncserver
sudo apt-get install tightvncserver
sudo apt-get install linux-on-dex
```

### Installing

Run your container in terminal mode and clone this repository. Then start the scripts with sudo:

```
sudo lod_vnc/startvnc.sh
sudo lod_vnc/stopvnc.sh
```

## Contributing

Feel free to fork and so on.

## Authors

* **masewo** - *Initial work* - [masewo](https://github.com/masewo)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* StuartRothrock @xda-developers
