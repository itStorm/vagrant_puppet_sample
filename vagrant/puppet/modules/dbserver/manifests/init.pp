class dbserver($port, $rootpassword, $dbname, $dbuser, $dbuserpassword) {
  class { '::mysql::server':
    create_root_user        => true,
    root_password           => "${rootpassword}",
    override_options        => {
      'mysqld' => {
        'port'                 => $port,
        'collation-server'     => 'utf8mb4_general_ci', # Replaces utf8_general_ci
        'character-set-server' => 'utf8mb4',            # Replaces utf8
      },
    },
    users                   => {
      "${$dbuser}@localhost" => {
        password_hash => mysql_password("${dbuserpassword}"),
      },
    },
    databases               => {
      "${dbname}" => {
        ensure  => 'present',
        # charset => 'utf8',
      },
    },
    grants                  => {
      "${$dbuser}@localhost/${dbname}.*" => {
        ensure     => 'present',
        options    => ['GRANT'],
        privileges => ['ALL'],
        table      => "${dbname}.*",
        user       => "${$dbuser}@localhost",
      },
    },
    restart                 => true,
  }
}
