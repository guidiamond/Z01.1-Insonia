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
from testeAssembly import compareRam, compareFromTestDir, clearTestDir
from simulateCPU import simulateFromTestDir
from compileALL import compileAll, compileAllNotify
from assembler import assemblerFromTestDir
from notificacao import testeAssemblySimulateNotif
from genJAR import *


def testeAssembly(jar, nasmDir, hackDir):

    # global path
    os.path.abspath(nasm)
    os.path.abspath(hack)

    # compila
    print("-------------------------")
    print("- Assembling files       ")
    print("- to ../bin/hack/")
    print("-------------------------")
    assembler(jar, nasm, hack, True) 

if __name__ == "__main__":
    pwd = os.path.dirname(os.path.abspath(__file__))
    testDir = pwd+"/../F-Assembly/tests/"
    nasm = pwd+"/../F-Assembly/src/nasm/"
    hack = pwd+"/bin/hack/"
    mvn = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'Assembler/')
    jar = pwd+"/Assembler/Z01-Assembler.jar"

    cError, cLog = assemblerFromTestDir(jar, testDir, nasm, hack)
    sys.exit(cError)
