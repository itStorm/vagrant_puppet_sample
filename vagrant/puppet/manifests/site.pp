node 'www.dev' {
  class { 'site::webserver': }
  class { 'site::database': }
}

node 'www.prod' {
  class { 'site::webserver': }
  class { 'site::database': }
}

node default {
  fail "Node >>>${fqdn}<<< didn't configure. Settings not found."
}