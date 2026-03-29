#!/bin/bash
source utils.sh

echo -e "${GREEN}=== MANIFESTO ===${NC}"

read -p "Tool: " TOOL
read -p "Freedom: " FREEDOM
read -p "Build: " BUILD

FILE="manifesto.txt"

echo "Using $TOOL, I value $FREEDOM. I will build $BUILD." > $FILE

echo -e "${CYAN}Saved to $FILE${NC}"
cat $FILE
