#!/usr/bin/env bash

while true; do
  clear

  cat <<'EOF'
 _   _       _____                 _ _                      _      _   _ _   _ _ _ _         
| | | |_ __ |___ / _ __  _ __ ___ | | |_ __ ___   ___ _ __ | |_   | | | | |_(_) (_) |_ _   _ 
| | | | '_ \  |_ \| '_ \| '__/ _ \| | | '_ ` _ \ / _ \ '_ \| __|  | | | | __| | | | __| | | |
| |_| | | | |___) | | | | | | (_) | | | | | | | |  __/ | | | |_   | |_| | |_| | | | |_| |_| |
 \___/|_| |_|____/|_| |_|_|  \___/|_|_|_| |_| |_|\___|_| |_|\__|___\___/ \__|_|_|_|\__|\__, |
                                                              |_____|                  |___/ 
   /\_/\
  ( 0.0 )
   > ^ <  << Helper!
EOF

  echo
  echo "[1] Disable State Determination/Enrollment"
  echo "[2] Change GBB Flags to 0x80b1 [WP MUST BE DISABLED]"
  echo
  echo "[Q] Quit | [P] Power Off | [R] Restart"
  echo

  read -rp "> " choice

  case "$choice" in
    1)
      echo "Disabling State Determination..."
      echo "haha get placeholder'd lmao"
      sleep 2
      ;;
    2)
      echo "WARNING: This WILL fail without Write Protect being disabled."
      sleep 3
      echo "Are you sure you want to proceed?"
      read -rp "[Y/N] "
      echo "haha get placeholder'd lmao"
      sleep 2
      exit 0
      ;;
    q|Q)
      echo "Exiting..."
      exit 0
      ;;
    p|P)
      echo "Powering off..."
      echo "imagine it did power off..."
      sleep 1
      exit 0
      ;;
    r|R)
      echo "Rebooting..."
      echo "what if it did actually reboot?"
      sleep 1
      exit 0
      ;;
    *)
      echo "Invalid option"
      sleep 1
      ;;
  esac
done
