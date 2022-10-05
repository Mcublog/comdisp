FROM mcublog/pywine:latest

COPY . /

RUN wine py -m pip install pip -U

RUN wine py -m pip install -r requirements.txt

RUN wine pyinstaller --noconfirm --onefile --name "KostyarPorts" ./comdisp.py

CMD ["/bin/bash"]
