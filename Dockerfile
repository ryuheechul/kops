FROM airhelp/kops:1.6.2

MAINTAINER ryuhcii@gmail.com

RUN apk update && apk add neovim
RUN rm /usr/bin/vi && ln -s /usr/bin/nvim /usr/bin/vim && ln -s /usr/bin/vim /usr/bin/vi
RUN mkdir -p ~/.config/nvim && printf "set number\nsyntax on\n" > ~/.config/nvim/init.vim

RUN apk add curl
RUN curl -LO https://github.com/wercker/stern/releases/download/1.5.1/stern_linux_amd64 \
     && mv stern_linux_amd64 /usr/local/bin/stern \
     && chmod +x /usr/local/bin/stern
