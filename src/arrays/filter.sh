#!/bin/bash

read -d "" -a countries
echo ${countries[@]/*[aA]*/}
