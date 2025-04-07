# Blue Stetson &nbsp; [![bluebuild build badge](https://github.com/reznik-gh/blue-stetson/actions/workflows/build.yml/badge.svg)](https://github.com/reznik-gh/blue-stetson/actions/workflows/build.yml)

## Allgemeines
Mein eigenes ublue image. Gebaut nach der Anleitung auf [BlueBuild docs](https://blue-build.org/how-to/setup/) :uk:
![Screenshot des Gnome Terminals mit der Ausgabe von fastfetch](/blue-stetson-screenshot.png)

### Der Name
Das ist einfach: Fedora ist ein Hutmodel. Und Stetson auch. Und Stetsons sind die klassischen Cowboy-Hütte, auch wenn Clint als mein Avatar hier keinen trägt.

### basiert auf
[silverblue-nvidia](https://github.com/ublue-os/hwe/pkgs/container/silverblue-nvidia)

### Hinzugefügte Pakete
- cowsay
- fastfetch
- distrobox
- yt-dlp
- pwgen
- moc
- ghostty
- python3-pip

### Entfernte Pakete
- Firefox
- ublue-os-just & just
- ublue-os-update-service
- gnome-classic-session
- gnome-shell-extensions:
  - background-logo
  - supergfxctl-gex
  - apps-menu
  - launch-new-instance
  - places-menu
  - window-list

### Hinzugefügte Dateien
- Nordic Polar Theme

### Hinzugefügte Configs
*noch nichts*


## Installation

> [!Warning]
> [Das hier ist ein experimentelles Feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable) :uk: *Eltern haften für ihre Kinder.*

Ich weiß zwar nicht warum man das jemand anderes als ich machen will, aber nun gut, es geht ja. Die einfachste Methode ist ein Rebase von einem Fedora Atomic Desktop. Entgegen anders lautenden Gerüchten kann man das direkt auf das signierte Image machen:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/reznik-gh/blue-stetson:latest
  ```
Jetzt noch schnellen Reboot
  ```
  systemctl reboot
  ```
und fertig. Herzlichen Glückwunsch! Warum auch immer du das gemacht hast.

## Verifizierung

Diese Images sind mit [Sigstore](https://www.sigstore.dev/)s [cosign](https://github.com/sigstore/cosign) signiert. Du kannst die Signatur verifizieren, indem du die `cosign.pub` aus diesem Repo runterlädst und folgenden Befehl ausführst:

```bash
cosign verify --key cosign.pub ghcr.io/reznik-gh/blue-stetson
```

## ISO

Es ist möglich eine Iso als Installationsmedium zu generieren, wenn der ganze Bumms direkt auf Fedora Atomic basiert. Kann man aber nicht auf Github hosten, da die ISOs zu groß sind. *(Halte ich tatsächlich für eine Ausrede, aber ok...)* [Hier](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso) :uk: gibt es Infos wie das geht. Vielleicht mach ich das irgendwann mal. Wahrscheinlich aber nicht.

