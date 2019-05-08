#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Rafael Corsi @ insper.edu.br
# Dez/2017
# Disciplina Elementos de Sistemas
#
from os.path import join, dirname
import sys
import os
import shutil
import subprocess
import argparse

# Scripts python
ROOT_PATH = subprocess.Popen(['git', 'rev-parse', '--show-toplevel'], stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
PROJ_PATH = os.path.join(ROOT_PATH, 'Projetos', 'src')
TOOL_PATH = os.path.join(ROOT_PATH, 'Projetos', 'Z01-tools')
TOOL_SCRIPT_PATH = os.path.join(TOOL_PATH, 'scripts')
sys.path.insert(0,TOOL_SCRIPT_PATH)
from report import report

reports = ['logJCode.txt', 'logJParser.txt', 'logJSymbolTable.txt']


def assemblerReport(r ,path):
    print("==== Results ============================")
    for filename in reports:
        try:
            r.java(path+filename)
        except IOError:
            print('Error : Arquivo não encontrado: {}'.format(filename))
    return(r.error)

def clearAssemblerReport(path):
    for filename in reports:
        try:
             os.remove(path+filename)
        except:
            pass


def genJAR(f):
    print("==== gerando jar ====================================")
    clearAssemblerReport(f)
    os.system("mvn -f {} package -q -e".format(f))


if __name__ == "__main__":
    f = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'Assembler/')
    genJAR(f)
    r = report('', 'H', 'JAVA')
    assemblerReport(r, f)
    print("==== Reporting results =========================")
    r.send()
