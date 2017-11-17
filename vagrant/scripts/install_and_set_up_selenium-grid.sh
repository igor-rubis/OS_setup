#!/usr/bin/env bash

 # Copyright 2016 Igor Rubis
 # Licensed under the Apache License, Version 2.0

cd /vagrant/packages/selenium-grid

java -jar selenium-server-standalone-2.53.0.jar -role hub

java -jar selenium-server-standalone-2.53.0.jar -role node  -hub http://localhost:4444/grid/register