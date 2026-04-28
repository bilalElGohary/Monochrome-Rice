#!/bin/bash

sudo dmidecode -t bios | grep -i "Release Date"
