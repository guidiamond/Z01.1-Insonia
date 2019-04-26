#!/usr/bin/env python3
# -*- coding: utf-8 -*-
######################################################################
# Tools
######################################################################
from os import *
import sys, subprocess

ROOT_PATH = subprocess.Popen(
    ['git', 'rev-parse', '--show-toplevel'],
    stdout=subprocess.PIPE).communicate()[0].rstrip().decode('utf-8')
sys.path.insert(0, ROOT_PATH + '/Projetos/Z01-tools/scripts/')
from config import *

from assembler import *

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("-n", "--nasm", required=False, help="arquivo nasm a ser compilado e programado na FPGA")
    ap.add_argument("-m", "--mif", required=False, help="arquivo mif a ser programado na FPGA")
    args = vars(ap.parse_args())

    print("------------------ Gravando nasm Z011")
    pwd = os.path.dirname(os.path.abspath(__file__))

    mif = ""
    if args["nasm"]:
        nasm = args["nasm"]
        hack = pwd+"/../bin/hack/"+os.path.splitext(os.path.basename(args["nasm"]))[0]
        assemblerFile(ASSEMBLER_JAR, nasm, hack, True)
        mif = hack + '.mif'
    elif args['mif']:
        mif = args['mif']
    else:
        ap.print_help()
    if mif:
        writeROM(mif)
