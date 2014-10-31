# == Class suricata::install
#
class suricata::install {
  case $::osfamily {
    'Debian': {
      apt::ppa{ 'ppa:oisf/suricata-stable': } ~>
        package { $suricata::package_name:
          ensure => present,
        }
    }
    'RedHat': {
      package { $suricata::package_name:
        ensure => present,
      }
    }
  }
}
