FROM thomasweise/docker-pandoc

MAINTAINER Arjen Wiersma <arjen@wiersma.org>

# install pandoc-latex-environment and latex packages
# tlmgr fails to run updmap, so ignore its errors, this might be bad.
RUN apt update && \
    apt install -y python3-pip && \
    apt install -y texlive-lang-european texlive-fonts-extra && \
    pip3 install pandoc-latex-environment && \
    apt-get clean &&\
    apt-get autoclean -y &&\
    apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /tmp/* /var/tmp/* &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -f /etc/ssh/ssh_host_*

# we remember the path to pandoc in a special variable
ENV PANDOC_DIR=/root/.cabal/bin/

# add pandoc to the path
ENV PATH=${PATH}:${PANDOC_DIR}

WORKDIR /doc/

CMD ["pandoc --help"]

    # tlmgr init-usertree && \
    # updmap -sys && \
    # (tlmgr install xecjk filehook unicode-math ucharcat pagecolor babel-german ly1 mweights sourcecodepro sourcesanspro mdframed needspace fvextra footmisc footnotebackref background || echo "tlmgr ran") &&\
    # updmap -sys && \
    # (tlmgr install awesomebox fontawesome5 || echo "tlmgr ran for fontawesome") && \
    # updmap -sys && \
