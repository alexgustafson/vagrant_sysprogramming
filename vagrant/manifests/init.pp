class core {

    exec { "apt-update":
      command => "/usr/bin/sudo apt-get -y update"
    }

    package {
      [ "vim", "git-core", "build-essential" ]:
        ensure => ["installed"],
        require => Exec['apt-update'],
    }

    exec { "debhelper":
      command => "/usr/bin/sudo apt-get -y install debhelper"
    }

    exec { "tmux":
      command => "/usr/bin/sudo apt-get -y install tmux"
    }
}

class python {

    package {
      [ "python3", "python-setuptools", "python-dev", "python-pip" ]:
        ensure => ["installed"],
        require => Exec['apt-update'],
    }

    exec {
      "virtualenv":
      command => "/usr/bin/sudo pip install virtualenv",

    }
}

class networking {
    package {
      [ "snmp", "tkmib", "curl", "wget" ]:
        ensure => ["installed"],
        require => Exec['apt-update'],
    }
}

class atropaide {

    exec { "node":
      command => "/usr/bin/sudo apt-get install nodejs"
    }
    
    exec { "atropa":
      command => "npm install atropa-ide"
    }
}

include core
include python
include networking

