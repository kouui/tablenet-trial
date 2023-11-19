#!/bin/bash -eux

# activate venv
source ~/venv/bin/activate

# install python dependency 
pip install torch==1.7.1+cpu torchvision==0.8.2+cpu torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
#pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
pip install -r OCR_tablenet/requirements.txt

# oh-my-bash setup
#trap "sed '13iOSH_THEME=\"mairan\"' ~/.bashrc > temp.txt && mv temp.txt ~/.bashrc" EXIT
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

## please execute the following command manually
#bash .devcontainer/postCommand.1.sh
#source ~/.bashrc
