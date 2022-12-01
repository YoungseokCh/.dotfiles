if [ type bat &> /dev/null ] || [ type batcat &> /dev/null ]
then
  apt-get install bat
fi

if [ type batcat &> /dev/null ] && [ ! type bat &> /dev/null ]
then
  ln -s /usr/bin/batcat ~/.local/bin/bat
fi
