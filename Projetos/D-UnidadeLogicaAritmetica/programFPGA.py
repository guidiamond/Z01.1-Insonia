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

if __name__ == "__main__":
    print("------------------ Programando FPGA - ULA")
    noti = notificacao("D-ULA\n")

    if writeSOF(CDF_ULA_PATH):
        noti.error("FPGA NÃ̀O PROGRAMADA!")
        sys.exit(ERRO_PROGRAMING)
    noti.ok("FPGA programada!")
    print('------------------- Concluido')
