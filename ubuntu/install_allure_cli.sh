#!/usr/bin/env bash

yes | apt-add-repository ppa:yandex-qatools/allure-framework
apt-get update
yes | apt-get install allure-commandline