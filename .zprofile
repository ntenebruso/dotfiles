#
# ~/.zprofile 
#

export PATH=$PATH:~/.spicetify

if [ $XDG_SESSION_TYPE == "wayland" ]; then
	export MOZ_ENABLE_WAYLAND=1
fi

export PATH=$PATH:~/.dotnet/tools

