class profiles::apache {
  $apache = $::osfamily ? {
    'RedHat' => 'htop',
    'Debian' => 'htop',
  } 
  #service { $apache:
  #  enable => true,
  #  ensure => true,
  #}
  package { $apache:
    ensure => 'installed',
  }
}
