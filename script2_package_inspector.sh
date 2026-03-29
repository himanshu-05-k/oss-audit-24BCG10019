#!/bin/bash
source utils.sh

PACKAGE=${1:-git}

echo -e "${GREEN}Checking $PACKAGE...${NC}"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo -e "${CYAN}Installed${NC}"
    dpkg -l | grep "$PACKAGE"
else
    echo -e "${RED}Not Installed${NC}"
fi
