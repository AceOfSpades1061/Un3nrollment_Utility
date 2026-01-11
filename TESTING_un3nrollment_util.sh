#!/usr/bin/env bash

confirm() {
  while true; do
    read -rp "[Y/N] " yn
    case "$yn" in
      y|Y) return 0 ;;
      n|N) return 1 ;;
      *) echo "Please enter Y or N." ;;
    esac
  done
}

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
   > ^ <  << helper!!
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
      echo "You have selected Disable State Determination. Proceed?"
      if confirm; then
        echo "Disabling State Determination..."
        sleep 1
        echo "you ran the test version so this doesn't do anything, check the source code to see what this would actually do"
        # echo --enterprise-enable-state-determination=never >/tmp/chrome_dev.conf
        # mount --bind /tmp/chrome_dev.conf /etc/chrome_dev.conf
        # initctl restart ui
        # echo "State Determination has been disabled! Now you can setup your chromebook as if it was never enrolled. :]"
        # sleep 5
        sleep 3
      else
        echo "Cancelled."
        sleep 1
      fi
      ;;
    2)
      echo "WARNING: This WILL fail if Write Protect is disabled."
      sleep 1
      echo "Are you sure you want to proceed?"
      sleep 1
      if confirm; then
        echo "you ran the test version so this doesn't do anything, check the source code to see what this would actually do"
        # echo "Changing GBB Flags to 0x80b1"
        # futility gbb -s --flash --flags=0x80b1
        # echo "GBB Flags have been changed to 0x80b1! Just to make sure it worked, go into Recovery, press tab, and look on the line gbb.flags"
        # sleep 5s
        sleep 1
      else
        echo "Cancelled."
        sleep 1
      fi
      ;;
    q|Q)
      echo "Exiting..."
      exit 0
      ;;
    p|P)
      echo "Powering off..."
      echo "test version so imagine it did power off..."
      # sudo shutdown
      sleep 1
      exit 0
      ;;
    r|R)
      echo "test version so just what if it did actually reboot?"
      # sudo reboot
      sleep 1
      exit 0
      ;;
    *)
      echo "Invalid option"
      sleep 1
      ;;
  esac
done
