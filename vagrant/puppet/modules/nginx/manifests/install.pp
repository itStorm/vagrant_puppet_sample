class nginx::install {
  package { 'Install Nginx':
    ensure => 'installed',
    name   => ['nginx'],
  }
}