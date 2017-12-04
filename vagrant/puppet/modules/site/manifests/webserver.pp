class site::webserver($path, $wwwname, $wwwroot, $wwwindex){
  include 'accessories'

  class { 'php':
    require => Class['accessories'],
  }

  class { 'nginx':
    path      => $path,
    wwwname   => $wwwname,
    wwwroot   => $wwwroot,
    wwwindex  => $wwwindex,
    require   => Class['php'],
  }
}