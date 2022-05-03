#!/bin/bash

EXECUTABLE=${1}

return_dep () {
    root_dep=${1}
    
    for dep in $(ldd ${root_dep} | grep -o '\/.*' | cut -d " " -f1)
    do
        echo ${dep} >> ./dep.dat
        return_dep ${dep}
    done
}

return_dep ${EXECUTABLE}
cat dep.dat | sort -u | sponge dep.dat
cat dep.dat && rm dep.dat

