FROM lburgazzoli/centos-7

RUN \
    yum -y install \
        gcc \
        readline \
        readline-devel \
        ncurses \
        ncurses-devel \
        libxml2 \
        libxml2-devel \
        expat \
        expat-devel \
        perl-App-cpanminus \
    && cpanm install -n Term::ReadKey \
    && cpanm install \
        Fatal \
        Env \
        Test::More \
        JSON::XS \
        Term::ReadLine::Gnu \
        JMX::Jmx4Perl \
    && yum -y remove \
        gcc
        readline-devel \
        ncurses-devel \
        libxml2-devel \
        expat-devel \
        perl-App-cpanminus
