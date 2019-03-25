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

PATH_CDF = os.path.join(TOOLS_SCRIPT_PATH, '..', 'sof', 'DE0_CV_Default.cdf')

from writeSOF import writeSOF
from assembler import assembler
from writeROM import writeROM


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("-n", "--nasm", required=True, help="arquivo nasm a ser compilado e programado na FPGA")
    args = vars(ap.parse_args())

    print("------------------ Gravando nasm Z011")

    # compilando NASM -> .bin
    nasm = args["nasm"]
    pwd = os.path.dirname(os.path.abspath(__file__))
    hack = pwd+"/../bin/hack/"+os.path.splitext(os.path.basename(args["nasm"]))[0]

    # assembler
    assembler(ASSEMBLER_JAR, nasm, hack, True)

    # program ROM
    writeROM(hack+".mif")

    assembler
