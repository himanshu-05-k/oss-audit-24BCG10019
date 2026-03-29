#!/bin/bash
source utils.sh

echo -e "${GREEN}=== SYSTEM INFO ===${NC}"

echo -e "${CYAN}User:${NC} $(whoami)"
echo -e "${CYAN}Kernel:${NC} $(uname -r)"
echo -e "${CYAN}Host:${NC} $(hostname)"
echo -e "${CYAN}Uptime:${NC} $(uptime -p)"
echo -e "${CYAN}Date:${NC} $(date)"
echo -e "${CYAN}Distro:${NC} $(grep PRETTY_NAME /etc/os-release | cut -d= -f2)"
echo -e "${YELLOW}License: GNU GPL${NC}"
