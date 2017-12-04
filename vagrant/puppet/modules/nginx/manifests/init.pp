class nginx ($path, $wwwname, $wwwroot, $wwwindex){
  contain 'nginx::install'

  class{ 'nginx::config':
    path      => $path,
    wwwname   => $wwwname,
    wwwroot   => $wwwroot,
    wwwindex  => $wwwindex,
    require   => Class['nginx::install'],
    notify    => Service['nginx'],
  }

  service { 'nginx':
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    restart    => 'sudo service nginx reload',
  }
}