class nginx ($path, $wwwname, $wwwroot, $wwwindex){
  class{ 'nginx::install': }->
  class{ 'nginx::config':
    path      => $path,
    wwwname   => $wwwname,
    wwwroot   => $wwwroot,
    wwwindex  => $wwwindex,
  }~>
  service { 'nginx':
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    restart    => 'sudo service nginx reload',
  }
}