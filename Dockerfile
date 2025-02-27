FROM ubuntu

RUN apt-get update && \
    apt-get install -y curl perl-modules sudo

WORKDIR /tmp
RUN curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN tar xvf install-tl-unx.tar.gz
RUN cd install-tl-* && perl ./install-tl --no-interaction

ARG USERNAME
RUN echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USERNAME
WORKDIR /home/$USERNAME

# COPY entrypoint.sh /usr/local/bin/entrypoint.sh
# CMD ["/usr/local/bin/entrypoint.sh"]
