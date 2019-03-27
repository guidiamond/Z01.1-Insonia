#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Curso de Elementos de Sistemas
# Desenvolvido por: Rafael Corsi <rafael.corsi@insper.edu.br>
#
# Adaptado de :     Pedro Cunial   <pedrocc4@al.insper.edu.br>
#                   Luciano Soares <lpsoares@insper.edu.br>
# Data de criação: 07/2017

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

class tstLogiSeq(object):

    def __init__(self):
        self.pwd = os.path.dirname(os.path.abspath(__file__))
        self.rtl = os.path.join(self.pwd,'src/rtl/')
        self.tst = os.path.join(self.pwd,'tests/')
        self.log = os.path.join(TOOL_PATH,'log','logE.xml')
        self.work = vhdlScript(self.log)

    def addSrc(self, work):
        work.addSrc(self.rtl)

    def addTst(self, work):
        if work.addTstConfigFile(self.tst) is False:
            sys.exit(1)

    def add(self, work):
        self.addSrc(work)
        self.addTst(work)

if __name__ == "__main__":

    # inicializa notificacao
    noti = notificacao(PROJ_E_NAME)

    # Init ALU
    tstLogiSeq = tstLogiSeq()

    # Logica Combinacional RTL
    tstLogiComb = tstLogiComb()
    tstLogiComb.addSrc(tstLogiSeq.work)

    # ULA
    tstUla = tstUla()
    tstUla.addSrc(tstLogiSeq.work)

    # Logica Sequencial
    tstLogiSeq.add(tstLogiSeq.work)
    tstLogiSeq.work.run()

    print("===================================================")
    r = report(tstLogiSeq.log, 'E', 'HW')

    # notificacao / log do teste
    noti.hw(r)

    print("Reporting test result to server")
    r.send()
    sys.exit(r.error)
    print("===================================================")
