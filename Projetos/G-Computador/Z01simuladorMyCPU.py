#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Rafael Corsi @ insper.edu.br
# Dez/2017
# Disciplina Elementos de Sistemas
#
# script para gerar hack a partir de nasm
# suporta como entrada um único arquivo
# ou um diretório
# Possibilita também a geração do .mif

import os,sys
import argparse
import platform

from os.path import join, dirname
import sys
import os
import shutil
import subprocess


ROOT_PATH = subprocess.Popen(['git', 'rev-parse', '--show-toplevel'], stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
PROJ_PATH = os.path.join(ROOT_PATH, 'Projetos', 'src')
TOOLS_PATH = os.path.join(ROOT_PATH, 'Projetos', 'Z01-tools')
TOOLS_SCRIPT_PATH = os.path.join(TOOLS_PATH, 'scripts')

SIMULATOR = TOOLS_PATH+'/Z01-Simulator-GUI/'

if __name__ == "__main__":
    root = os.getcwd()
    os.chdir(SIMULATOR)

    # tenta detectar a versão do python do sistema
    # se python2 for a padrão, forca a execucao
    # com python 3
    os.system('python main.py --rtl_dir=' + ROOT_PATH+'/Projetos/src/G-Computador/Z01-Simulator-RTL/')
