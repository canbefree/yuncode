FROM cm2network/steamcmd
USER root 
RUN ldconfig

RUN sed -i 's|deb.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list && \
    sed -i 's|security.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list
    
RUN set -x \
	# Install, update & upgrade packages
	&& apt-get update \
	&& apt-get install -y libcurl4-gnutls-dev \
	&& sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
	&& dpkg-reconfigure --frontend=noninteractive locales \
	&& rm -rf /var/lib/apt/lists/*
 

User steam

# 缺少 libcurl-gnutls.so.4 ? 
# apt install libcurl4-gnutls-dev 
# ln -s  /usr/lib/x86_64-linux-gnu/libcurl-gnutls.so.4  /home/steam/steamcmd/dst/bin64/libcurl-gnutls.so.4 