# Arch setup script

### Disable Power Key press power off the PC and Lid suspend it.
Modify 2 lines in `/etc/systemd/logind.conf`

```
HandlePowerKey=ignore
HandleLidSwitch=ignore
```

### Quiet boot
In `/boot/loader/entries/NAME.conf`

Add `quiet splash`

### TODO
`AppArmor` setup.

