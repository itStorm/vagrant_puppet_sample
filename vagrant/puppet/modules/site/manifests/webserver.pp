class site::webserver($path, $wwwname, $wwwroot, $wwwindex){
  class { 'accessories': }
  class { 'php': }->
  class { 'nginx':
    path      => $path,
    wwwname   => $wwwname,
    wwwroot   => $wwwroot,
    wwwindex  => $wwwindex,
  }
}