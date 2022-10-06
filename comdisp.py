#!/usr/bin/env python

import art
import serial.tools.list_ports

PROGRAM_NAME = 'Kostya.R-Ports'


def main():
    print(art.text2art(PROGRAM_NAME, font="chunky"))
    header = '-' * 5 + 'Serial Port List' + '-' * 5
    print(header)
    [print(port) for port in serial.tools.list_ports.comports()]
    print('-' * len(header))
    input("Press ENTER key to continue...")


if __name__ == "__main__":
    main()
