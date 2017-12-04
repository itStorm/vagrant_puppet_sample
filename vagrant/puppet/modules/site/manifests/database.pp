class site::database($port, $rootpassword, $dbname, $dbuser, $dbuserpassword) {
  class { 'dbserver':
    port           => $port,
    rootpassword   => $rootpassword,
    dbname         => $dbname,
    dbuser         => $dbuser,
    dbuserpassword => $dbuserpassword,
  }
}