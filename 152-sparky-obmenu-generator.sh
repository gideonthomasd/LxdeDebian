  #!/bin/bash
  
  sudo apt-get install build-essential cpanminus git
  
  git clone https://github.com/trizen/obmenu-generator
  sudo cp obmenu-generator/obmenu-generator /usr/bin
  sudo cp -r obmenu-generator/schema.pl ~/.config/obmenu-generator/
  sudo cpanm Linux::DesktopFiles
  sudo cpanm Data::Dump
  sudo chmod +x /usr/bin/obmenu-generator
  
  obmenu-generator -p
