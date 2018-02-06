class profile::base(

 #$server1 = ['0.ubuntu.pool.ntp.org','1.ubuntu.pool.ntp.org']
  $server1
){
 
  class {'::ntp':

     servers => $server1,

}
}

