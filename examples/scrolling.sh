#!/bin/bash
python autotrace/autotrace.py --syncoff -l . 'bash -c "var=0; while true; do let "var++"; echo ${var}-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa; sleep 0.2; done"' 'bash -c "while true; do echo b; sleep 0.1; done"'
