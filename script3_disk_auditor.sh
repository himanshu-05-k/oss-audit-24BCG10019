#!/bin/bash
source utils.sh

echo -e "${GREEN}=== DISK AUDIT ===${NC}"

DIRS=("/etc" "/var/log" "/home")

for DIR in "${DIRS[@]}"; do
    SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
    echo -e "${CYAN}$DIR${NC} -> $SIZE"
done
