class php::install {
  package { [
    'php7.0-cli',
    'php7.0-common',
    'php7.0-cgi',
    'php7.0-fpm',
    'php7.0-curl',
    'php7.0-intl',
    'php7.0-gd',
    'php7.0-mysql',
    'php-xdebug',
  ]:
    ensure => 'installed',
  }
}