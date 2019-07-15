#!/bin/sh

#boxの追加と立ち上げ、ssh説族
vagrant box add deeplern/ubuntu18 package.box
vagrant up
vagrant ssh
