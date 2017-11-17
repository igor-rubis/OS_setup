#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

sudo apt-get update
yes | sudo apt-get install curl

curl -fsSL https://get.docker.com/ | sh

curl -fsSL https://get.docker.com/gpg | sudo apt-key add -

sudo usermod -aG docker vagrant