echo Sonic Mania for Fedora Silverblue - setup
echo  
echo Creating container
distrobox create -Y --image archlinux:latest --name SonicMania --home ~/.mania --additional-packages "base-devel glew glfw libtheora portaudio git cmake"
cd ~
mkdir .mania
cd .mania
rm .bashrc
rm .zshrc
curl https://raw.githubusercontent.com/SonicGamerEpisode55/Sonic-Mania-Fedora-Silverblue/main/first.bashrc > .bashrc
cp .bashrc .zshrc
cd ..
distrobox enter SonicMania
