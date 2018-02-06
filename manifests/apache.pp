class profile::apache(

#$port = 80,
#$docroot = '/var/www/test',
#$default_vhost = false,
$default_vhost,
Hash $apache_vhost_servers
) {
 
  class {'::apache':

     default_vhost => $default_vhost,

}

#  ::apache::vhost { 'manasrb2.mylabserver.com':

 #    docroot => $docroot,
 #    port    => $port,

#}
create_resources(::apache::vhost, $apache_vhost_servers)
}  
 

  
