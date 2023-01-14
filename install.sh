echo "Installing Yeet..."

if [ -d "/opt/yeet" ]; then
    echo "Yeet is already installed"
    exit 1
fi

# Create yeet directory
sudo mkdir /opt/yeet
sudo chown $USER:$USER /opt/yeet

# Copy files
cp -r ./bin /opt/yeet/bin

echo "export PATH=/opt/yeet/bin:\$PATH" >> ~/.zshrc
echo "export PATH=/opt/yeet/bin:\$PATH" >> ~/.bashrc
echo "set PATH /opt/yeet/bin \$PATH" >> ~/.config/fish/config.fish
# Done
echo "Yeet has been installed successfully! Please restart your terminal."