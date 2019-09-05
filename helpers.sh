function install_deb()
{
    URL=$1
    TEMP_DEB="$(mktemp)" &&
    	curl -o "$TEMP_DEB" -L "$URL" &&
    	sudo dpkg -i "$TEMP_DEB" &&
		rm -f "$TEMP_DEB" 
    
    #Install dependecies if needed
    sudo apt-get install -f -y
}
