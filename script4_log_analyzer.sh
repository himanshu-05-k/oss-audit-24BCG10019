#!/bin/bash
source utils.sh

LOGFILE=$1
KEYWORD=${2:-error}

COUNT=$(grep -i "$KEYWORD" "$LOGFILE" | wc -l)

echo -e "${GREEN}Keyword '$KEYWORD' count:${NC} $COUNT"

echo -e "${CYAN}Last matches:${NC}"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
