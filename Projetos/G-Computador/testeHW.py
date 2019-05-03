#!/usr/bin/env python3
# -*- coding: utf-8 -*-

######################################################################
# Tools
######################################################################
from os.path import join, dirname
import sys, subprocess

ROOT_PATH = subprocess.Popen(
    ['git', 'rev-parse', '--show-toplevel'],
    stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
sys.path.insert(0, ROOT_PATH + '/Projetos/Z01-tools/scripts/')
from config import *


class tstHW(object):

    def __init__(self):
        self.pwd = os.path.dirname(os.path.abspath(__file__))
        self.rtl = os.path.join(self.pwd, 'src/rtl/')
        self.tst = os.path.join(self.pwd, 'tests/vhd/')
        self.log = os.path.join(TOOL_PATH,'log','logG.xml')
        self.work = vhdlScript(self.log)

    def addSrc(self, work):
        work.addSrc(self.rtl)
        work.addSrcFile(self.rtl+'Dispositivos/RAM/RAM16K.vho')
        work.addSrcFile(self.rtl+'Dispositivos/Screen/Screen.vho')

    def addTst(self, work):
        work.addSrc(self.tst)

    def add(self, work):
        self.addSrc(work)
        self.addTst(work)

if __name__ == "__main__":

    # inicializa notificacao
    noti = notificacao(PROJ_G_NAME)

    # Init ALU
    tstCpu = tstHW()
    tstLogiComb = tstLogiComb()
    tstUla = tstUla()
    tstSeq = tstLogiSeq()

    tstLogiComb.addSrc(tstCpu.work)
    tstUla.addSrc(tstCpu.work)
    tstSeq.addSrc(tstCpu.work)
    tstCpu.add(tstCpu.work)
    tstCpu.work.run()

    print("===================================================")
    r = report(tstCpu.log, 'G', 'HW')

    # notificacao / log do teste
    noti.hw(r)

    print("Reporting test result to server")
    r.send()
    sys.exit(r.error)
    print("===================================================")
