FROM ubuntu:latest 

# Mantenedor da imagem - optional
LABEL maintainer="kevynzap"

# Executar um comando de atualizacao (y=yes). Instalar dependências necessárias
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    unzip \
    gnupg \
    build-essential \
    git \
    openssh-client \
    iputils-ping \
    groff \
    nano \
    telnet && \
    apt-get clean && \    
    rm -rf /var/lib/apt/lists/*



# Cria o path apos inicializacao
#WORKDIR /opt/terraform

# Copia todos os arquivos na raiz e cria uma pasta base e joga tudo la
#COPY . base