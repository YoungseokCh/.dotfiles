# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# OPAM configuration
if [ -e "$HOME/.opam/opam-init/init.sh" ] ; then
    . /home/youngseok/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
fi

if [ -e $HOME/.opam/config ] ; then
  eval `opam config env`
fi

# GO
if [ -d "$HOME/.go" ] ; then
    PATH="$HOME/.go/bin:/usr/lib/go-1.10/bin:$PATH"
fi

# Rust
if [ -e "$HOME/.cargo/env" ] ; then
    . "$HOME/.cargo/env"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

# Visual Studio Code
code () {
	# local script=$(echo ~/.vscode-server/bin/*/bin/code(*ocNY1)) 
    local script=$(echo ~/.vscode-server/bin/*/bin/remote-cli/code(*oc[1]N))
	if [[ -z ${script} ]]
	then
		echo "VSCode remote script not found"
		exit 1
	fi
    local socket=$(echo /run/user/$UID/vscode-ipc-*.sock(=ocNY1)) 
	if [[ -z ${socket} ]]
	then
		echo "VSCode IPC socket not found"
		exit 1
	fi
	export VSCODE_IPC_HOOK_CLI=${socket} 
	${script} $*
}

# Function for downloading google drive file
function gdown(){
  # Check if argument is provided
  if [ -z "$2" ]; then
    echo "usage: gdown <id> <filename>"
    CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
    wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$CONFIRM&id=$1" -O $2
    rm -rf /tmp/cookies.txt
}
