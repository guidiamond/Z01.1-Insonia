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


def testeAssembly(jar, testDir, nasmDir, hackDir, gui, verbose):
    # global path
    os.path.abspath(nasm)
    os.path.abspath(hack)

    print("\n ==== Montando ============================")
    cError, cLog = assemblerFromTestDir(jar, testDir, nasmDir, hackDir)

    if cError > 0:
        compileAllNotify(cError, cLog)

    if cError == 0:
        print("\n-------------------------")
        print("- Simulando              ")
        print("-------------------------")
        clearTestDir(testDir)
        sError, sLog = simulateFromTestDir(testDir, hackDir, gui, verbose, rtlDir=PROJ_G_PATH+'/Z01-Simulator-RTL/')
        if sError != ERRO_NONE:
            testeAssemblySimulateNotif(sError, sLog)
            sys.exit(1)

        # testAssembling files
        print("\n-------------------------")
        print("- Testando               ")
        print("-------------------------")
        tError, tLog = compareFromTestDir(testDir)
        if tError:
            testeAssemblySimulateNotif(tError, tLog[:])
        return(tError, tLog)

    else:
        print("\n-------------------------")
        print("- DICA                   ")
        print("-------------------------")
        print(" \n --> OS TESTES SÓ SERÃO EXECUTADOS QUANDO NÃO TIVER MAIS ERROS DE COMPILACÃO \n")
        print(" Para realizar os testes não podemos ter error de compilacão no assembly.")
        print(" Verifique o codigo com (erro de compilacao) e o corrija.")
        print(" Reveja a sintaxe em: https://github.com/insper/z01.1/wiki/AssemblyZ1 \n")
        return(cError, cLog)
    return(0)


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("-c", "--testDir", help="lista de arquivos a serem testados")
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

    pwd = os.path.dirname(os.path.abspath(__file__))

    testDir = pwd+"/../F-Assembly/tests/"
    nasm = pwd+"/../F-Assembly/src/nasm/"
    hack = pwd+"/bin/hack/"
    mvn = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'Assembler/')
    jar = pwd+"/Assembler/Z01-Assembler.jar"

    print("----------------------------------------------------")
    print("Só executar, após genJAR estiver passando sem erros!")
    print("----------------------------------------------------")

    erro, log = testeAssembly(jar=jar, testDir=testDir, nasmDir=nasm, hackDir=hack, gui=gui, verbose=verbose)
    print("\n-------------------------")
    print("- Reportando resultado   ")
    print("-------------------------")
    r = report(log, 'H', 'NASM')
    r.send()
    print("\n--======== FIM ==========--")
    sys.exit(erro)
