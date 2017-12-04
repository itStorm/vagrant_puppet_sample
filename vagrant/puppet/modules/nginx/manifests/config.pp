class nginx::config($path, $wwwname, $wwwroot, $wwwindex) {
  file { 'Copy vhost config':
    content => template('nginx/vhost_site.erb'),
    ensure  => file,
    path    => '/etc/nginx/sites-available/vhost_site',
  }

  file { 'Create link for vhost':
    target => '/etc/nginx/sites-available/vhost_site',
    ensure => 'link',
    path   => '/etc/nginx/sites-enabled/vhost_site',
  }
}