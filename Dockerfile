FROM python:3.8-slim-buster
# 3.8.9-slim-buster
ARG USERNAME=ubuntu
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -s /bin/bash -m $USERNAME \
    #
    # [Optional] Add sudo support. Omit if you don't need to install software after connecting.
    && apt-get update \
    && apt-get install -y sudo curl git nginx supervisor wget \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME \
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* 

USER $USERNAME
WORKDIR /home/${USERNAME}

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - \
    && echo "PROMPT_DIRTRIM=2" >> ~/.bashrc \
    && echo "PATH=$HOME/.poetry/bin:${PATH}" >> ~/.bashrc