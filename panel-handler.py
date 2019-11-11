#!/usr/bin/env python3

import argparse
import os

parser = argparse.ArgumentParser()
parser = argparse.ArgumentParser(description = "Helper script to add or remove users from database")
parser.add_argument("--panel",      metavar = "PANELID",   type = str,   required = False,    help = "Name of panel to add")
parser.add_argument("--instid",     metavar = "INSTID",    type = str,   required = False,    help = "Institute ID for user to be added to")
parser.add_argument("--file",       metavar = "FILE",      type = str,   required = True,     help = "panel file")
args = parser.parse_args()

file_name = os.path.basename(args.file)

os.system("docker-compose run --rm -e \"INSTID={:}\" -e \"PANELID={:}\" -e \"FILE=/panels/{:}\" scout-addpanel".format(args.instid, args.panel, args.file))
 
