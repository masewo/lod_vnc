# lod_vnc

Some scripts to make VNC connections over WiFi work on Linux on DeX. Tested okay on a Samsung Galaxy Note 9 and a Pixel C with bVNC as a client.

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

### Installation & Usage

Run your container in terminal mode and clone this repository. Then start the scripts with sudo:

```
sudo lod_vnc/startvnc.sh
sudo lod_vnc/stopvnc.sh
```

You may change geometry and dpi by adding them to the start script as arguments:

```
sudo lod_vnc/startvnc.sh 1920x1080 100
```

After start script was executed you can not run the normal linux on dex GUI on a display connected via hdmi adapter anymore. To make it work again you have to run the stop script.

## Limitations

The screen of your phone has to be on and the linux on dex app in terminal mode in the foreground otherwise vnc connections will pause.

## Contributing

Feel free to fork and so on.

## Authors

* **masewo** - *Initial work* - [masewo](https://github.com/masewo)

See also the list of [contributors](https://github.com/masewo/lod_vnc/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* StuartRothrock @xda-developers
