function fish_greeting -d "fish startup greeting"
  set_color $fish_color_autosuggestion
  echo " Welcome to "(hostname -f)", "(whoami)"!"
  uptime
end
