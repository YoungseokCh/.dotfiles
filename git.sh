git config --global core.editor vim # set default editor as vim

# set global user email and name
read -p "Enter your email: " email
read -p "Enter your name: " name

git config --global user.email $email
git config --global user.name $name
