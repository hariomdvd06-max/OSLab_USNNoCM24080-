#!/bin/bash
# Script: menu.sh
# Purpose: Menu-driven program to execute system tasks

while true
do
    echo "--------------------------------------"
    echo "           MENU OPTIONS"
    echo "1. Display calendar of current month"
    echo "2. Display today's date and time"
    echo "3. Display currently logged in usernames"
    echo "4. Display your terminal number"
    echo "5. Exit"
    echo "--------------------------------------"
    
    read -p "Enter your choice (1-5): " choice
    
    case $choice in
        1)
            echo ""
            echo "Calendar of current month:"
            date
            ;;
        2)
            echo ""
            echo "Today's date and time:"
            date
            ;;
        3)
            echo ""
            echo "Users currently logged in:"
            whoami | awk '{print $1}' | sort | uniq
            ;;
        4)
            echo ""
            echo "Your terminal number:"
            tty
            ;;
        5)
            echo "Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please enter 1-5."
            ;;
    esac
    
    echo ""
    read -p "Press Enter to continue..." temp
done
