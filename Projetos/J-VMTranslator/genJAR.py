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

# Verificar se testes unitários passaram
def checkUnitTests(dirname):

        hasErrors = False

        # rotina de leitura do arquivo de teste
        for filename in os.listdir(dirname):
            if filename.endswith('.txt'):
                try:
                    with open(dirname+filename, 'r') as f:
                            tmp = f.read().splitlines()
                            partes = tmp[3].split()
                            for i in range(len(partes)):
                                    if(partes[i]=='Failures:'):
                                            if(partes[i+1]!='0,'):
                                                    hasErrors = True
                                    if(partes[i]=='Errors:'):
                                            if(partes[i+1]!='0,'):
                                                    hasErrors = True
                                    if(partes[i]=='Skipped:'):
                                            if(partes[i+1]!='0,'):
                                                    hasErrors = True
                    return hasErrors
                except IOError:
                    print('Error : Arquivo não encontrado: {}'.format(filename))
                    return(1)
        return(0)

def genJAR():
    pwd = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'VMtranslator/')

    ap = argparse.ArgumentParser()
    ap.add_argument("-f", "--logFile", help="log file a ser enviado")
    args = vars(ap.parse_args())

    print("==== gerando jar ====================================")
    os.system("mvn -f {} package -q -e".format(pwd))

    if checkUnitTests(os.path.join(pwd,'target', 'surefire-reports'+'/')):
            print("==== ERRO ======================================")
            print('=> Erro Java, analise log do maven! ')
            print("================================================")
            sys.exit(-1)

    #sys.exit(0)

if __name__ == "__main__":
    genJAR()
