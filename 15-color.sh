#!/bin/bash

# Variables using ANSI-C quoting for best compatibility
BOLD_RED_ON_RED=$'\033[1;31;41m'
BIRED=$'\033[1;91m'
GREEN=$'\033[0;32m'
NC=$'\033[0m'

echo "${BIRED}This is Bold Red${NC}"

echo "${BOLD_RED_ON_RED} This text is Bold Red on a Red Background ${NC}"

# Define the colors
WHITE_BG_RED_TEXT=$'\033[0;31;47m'
BOLD_RED_ON_WHITE=$'\033[1;31;47m'

# Usage
echo "${BOLD_RED_ON_WHITE} Bold Red text on White background ${NC}"
