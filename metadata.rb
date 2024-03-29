maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libisccfg"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libcap", ">= 0.0.1"
depends          "libdns", ">= 0.0.1"
depends          "libisc", ">= 0.0.1"
depends          "libisccc", ">= 0.0.1"
depends          "libxml2", ">= 0.0.1"
