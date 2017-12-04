class php {
  class{ 'php::install': }->
  class{ 'php::config': }~>
  service { 'php7.0-fpm':
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}