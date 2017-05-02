# -*- encoding: utf-8 -*-
# Python Startup Script
import readline
import rlcompleter
import atexit
import os

# turn on the completer
if 'libedit' in readline.__doc__:
	readline.parse_and_bind("bind ^I rl_complete")
else:
	readline.parse_and_bind("tab: complete")

# display histories
histfile = os.path.join(os.environ['HOME'], '.pythonhistory')

try:
	readline.read_history_file(histfile)
except IOError:
	pass

atexit.register(readline.write_history_file, histfile)

del os, histfile, readline, rlcompleter, atexit

import prompt
prompt.Prompt.set_ps1("<greenLight>>>> <reset>")
del prompt

# gnuplot.py
from Gnuplot import Gnuplot
from numpy import *
from scipy import *
