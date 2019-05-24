#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Rafael Corsi @ insper.edu.br
# Dez/2017
# Disciplina Elementos de Sistemas
from os.path import join, dirname
import sys, subprocess

ROOT_PATH = subprocess.Popen(
    ['git', 'rev-parse', '--show-toplevel'],
    stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
sys.path.insert(0, ROOT_PATH + '/Projetos/Z01-tools/scripts/')

from config import *
from vmtranslator import vmtranslator

def compileVM(bootstrap, jar, vmDir, nasmDir):
    vmtranslator(bootstrap, vmDir, nasmDir, jar=jar)

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("-b", "--bootstrap", help="insere inicialização do sistema", action='store_true')
    args = vars(ap.parse_args())
    
    if args["bootstrap"]:
        bs = True
    else:
        bs = False

    pwd = os.path.dirname(os.path.abspath(__file__))
    vmDir = pwd+"/src/vm/"
    vmExDir = pwd+"/../I-VM/src/vmExamples/"
    nasmDir = pwd+"/bin/nasm/"
    jar = pwd+'/VMtranslator/Z01-VMTranslator.jar'
    compileVM(bs, jar, vmDir, nasmDir)
    compileVM(bs, jar, vmExDir, nasmDir)
