class php {
  contain 'php::install'

  class{ 'php::config':
    require => Class['php::install'],
    notify  => Service['php7.0-fpm'],
  }

  service { 'php7.0-fpm':
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}