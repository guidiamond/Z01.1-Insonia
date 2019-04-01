#!/bin/bash

git submodule foreach 'git stash; git checkout master; git pull'
wait
