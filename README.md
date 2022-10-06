# comdisp

Simple python script for listing COM ports

![img](/doc/Screenshot_20221005_174623.png)

## Build bin

```bash
# build
pyinstaller --noconfirm --onefile --name "KostyarPorts" ./comdisp.py
# install
cp ./dist/KostyarPorts ~/.local/bin
```


## Build ComDisp bin for Win in Linux

```bash
docker build -f ./dockerfile . -t comdisp
docker run --name abnormal_maximum comdisp:latest
docker cp abnormal_maximum:/dist/KostyarPorts.exe ./
docker rm abnormal_maximum
```
