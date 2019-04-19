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


def testeAssembly(jar, testDir, nasmDir, hackDir, gui, verbose, skip):

    pwd = os.path.dirname(os.path.abspath(__file__))
    rtlDir = os.path.join(pwd, 'Z01-Simulator-RTL')

    # global path
    os.path.abspath(nasm)
    os.path.abspath(hack)

    # compila
    if skip is not False:
        print("-------------------------")
        print("- Assembling files .... " )
        print("-------------------------")
        assemblerAll(jar, nasm, hack, True)

    # simulando
    print("-------------------------")
    print("- Simulating .... ")
    print("-------------------------")
    simulateFromTestDir(testDir, hackDir, gui, verbose, rtlDir=rtlDir)

    # testAssembling files
    print("-------------------------")
    print("- Testando .... ")
    print("-------------------------")
    compareFromTestDir(testDir)

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("-c", "--testDir", help="lista de arquivos a serem testados")
    ap.add_argument("-s", "--skipCompilation", help="não compila novamente os programas", action='store_true')
    ap.add_argument("-v", "--verbose", help="log simulacao", action='store_true')
    ap.add_argument("-g", "--gui", help="carrega model sim", action='store_true')
    args = vars(ap.parse_args())

    if args["verbose"]:
        verbose = True
    else:
        verbose = False

    if args["gui"]:
        gui = True
    else:
        gui = False

    if args["skipCompilation"]:
        skip = False
    else:
        skip = True

    pwd = os.path.dirname(os.path.abspath(__file__))
    testDir = PROJ_PATH + "/F-Assembly/tests/"
    nasm = PROJ_PATH + "/F-Assembly/src/nasm/"
    hack = PROJ_PATH + "/G-Computador/bin/hack/"

    jar = TOOL_PATH+"/jar/Z01-Assembler.jar"
    testeAssembly(jar=jar, testDir=testDir, nasmDir=nasm, hackDir=hack, gui=gui, verbose=verbose, skip=skip)

