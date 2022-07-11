# ADB utils

## Feature

ADB commands that are frequently used have been made into shell scripts.
It does not work when multiple devices are connected.

## Future works

- [ ] Support multiple devices
- [x] Screen recording & download
- [x] invoke scheme

Any ideas?

## Usage
Show Activity Stack
```
$ sh activity-stack.sh
```

Get Apk
```
$ sh get-apk.sh [package name]
```

Record screen

```
$ sh screen-record.sh
Press Enter Key to exit the record and pull.
<Enter>
```

Call scheme

```
$ sh call-scheme.sh [scheme]
```



## License

[Apache2](LICENSE)