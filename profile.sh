#!/bin/bash

set -e

stack build --executable-profiling --library-profiling --ghc-options="-fprof-auto -rtsopts -O"
stack exec -- haskell-memory +RTS -p -h
hp2ps haskell-memory.hp
