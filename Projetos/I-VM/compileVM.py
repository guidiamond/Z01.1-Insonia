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

def compileVM(bootstrap, jar):

    pwd = os.path.dirname(os.path.abspath(__file__))
    vmDir = pwd+"/src/vm/"
    vmExDir = pwd+"/src/vmExamples/"
    nasmDir = pwd+"/bin/nasm/"

    # compila
    print("------------------------------")
    print("- Translating Examples files  ")
    print("- to I-VMTranslator/bin/nasm/ ")
    print("------------------------------")
    vmtranslator(bootstrap, vmExDir, nasmDir, jar=jar)

    print("------------------------------")
    print("- Translating src files       ")
    print("- to I-VMTranslator/bin/nasm/ ")
    print("------------------------------")
    vmtranslator(bootstrap, vmDir, nasmDir, jar=jar)

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("-b", "--bootstrap", help="insere inicialização do sistema", action='store_true')
    args = vars(ap.parse_args())

    if args["bootstrap"]:
        bs = True
    else:
        bs = False

    jar = os.path.abspath(VMTRANSLATOR_JAR)
    compileVM(bootstrap=bs, jar=jar)
