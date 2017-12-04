class site::database($port, $rootpassword, $dbname, $dbuser, $dbuserpassword) {
  include 'accessories'

  class { 'dbserver':
    port           => $port,
    rootpassword   => $rootpassword,
    dbname         => $dbname,
    dbuser         => $dbuser,
    dbuserpassword => $dbuserpassword,
    require        => Class['accessories'],
  }
}