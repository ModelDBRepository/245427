#!/bin/bash
for i in 0 1 2 3 4;  do
nrnivmodl
nrngui init$i.hoc
done
