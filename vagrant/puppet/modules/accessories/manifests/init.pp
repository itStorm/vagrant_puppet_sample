class accessories{
  exec { 'configure_locales':
    command  => 'export LANGUAGE=en_US.UTF-8 && export LANG=en_US.UTF-8 && export LC_ALL=en_US.UTF-8 && locale-gen en_US.UTF-8 && locale-gen ru_RU.UTF-8',
    provider => shell,
    creates  => "${site::webserver::path}/state/configure_locales",
  }->file { 'Create configure locales flag':
    content => 'configure_locales_flag',
    ensure  => present,
    path    => "${site::webserver::path}/state/configure_locales",
  }->package{ [
    'mc',
    'git',
    'curl',
    'memcached',
  ]:
    ensure => 'installed',
  }
}