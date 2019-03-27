#!/usr/bin/env python3
# -*- coding: utf-8 -*-
######################################################################
# Tools
######################################################################
import os
import sys, subprocess, time

ROOT_PATH = subprocess.Popen(
    ['git', 'rev-parse', '--show-toplevel'],
    stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
sys.path.insert(0, ROOT_PATH + '/Projetos/Z01-tools/scripts/')
from config import *

def programSOF():
    # primeiro reinicia o driver do jtagd
    # no linux
    if(os.name == 'posix'):
        os.system("killall jtagd")
        time.sleep(1)
        os.system("jtagconfig")

    writeSOF(PATH_CDF)

if __name__ == "__main__":
    print("------------------ Programando FPGA Z011")
    noti = notificacao("F-Assembly\n")

    if writeSOF(CDF_Z01_PATH):
        noti.error("FPGA NÃ̀O PROGRAMADA!")
        sys.exit(ERRO_PROGRAMING)
    noti.ok("FPGA programada!")
    print('------------------- Concluido')
