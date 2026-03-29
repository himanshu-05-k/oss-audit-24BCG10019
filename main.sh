
---

# 🎛️ main.sh (MENU SYSTEM 🔥)

```bash
#!/bin/bash
# Main Menu Script

source utils.sh

LOG_FILE="logs/activity.log"
mkdir -p logs

log_action() {
    echo "$(date) - $1" >> $LOG_FILE
}

while true; do
    clear
    echo -e "${CYAN}==============================${NC}"
    echo -e "${GREEN}   OPEN SOURCE AUDIT TOOL${NC}"
    echo -e "${CYAN}==============================${NC}"
    echo "1. System Identity"
    echo "2. Package Inspector"
    echo "3. Disk Auditor"
    echo "4. Log Analyzer"
    echo "5. Manifesto Generator"
    echo "6. Exit"
    echo "--------------------------------"

    read -p "Choose option: " choice

    case $choice in
        1) ./script1_system_identity.sh; log_action "Ran Script 1";;
        2) ./script2_package_inspector.sh git; log_action "Ran Script 2";;
        3) ./script3_disk_auditor.sh; log_action "Ran Script 3";;
        4) read -p "Enter log file: " file
           ./script4_log_analyzer.sh $file error
           log_action "Ran Script 4";;
        5) ./script5_manifesto_generator.sh; log_action "Ran Script 5";;
        6) echo "Exiting..."; exit;;
        *) echo "Invalid choice"; sleep 1;;
    esac

    read -p "Press Enter to continue..."
done
