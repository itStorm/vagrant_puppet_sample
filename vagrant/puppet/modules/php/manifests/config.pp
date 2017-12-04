class php::config {
  file { 'Copy php.ini':
    content => template('php/php.ini.erb'),
    ensure  => file,
    path    => '/etc/php/7.0/fpm/php.ini',
  }

  file { 'Copy www.conf':
    content => template('php/www.conf.erb'),
    ensure  => file,
    path    => '/etc/php/7.0/fpm/pool.d/www.conf',
  }
}