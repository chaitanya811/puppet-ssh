class ssh::params {
  case $facts['operatingsystem'] {
    'Debian': { 
       $package_name = 'openssh-server'
       $service_name = 'ssh'
}
    /^RedHat|CentOS/: {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
      notify{ "${0} is our operating system!": }
} 
     default: {
       fail("${facts['operatingsystem']} is not supported!")
}
}
   $permit_root_login = false
   $port              = 22
}
 #  if $facts['os']['family'] == 'Debian' {
  #   $package_name = 'openssh-server'
   #  $service_name = 'ssh'
#}
 # elsif $facts['os']['family'] == 'RedHat' {
   #  $package_name = 'openssh-server'
    # $service_name = 'sshd'
#}

 # else {
  #  fail("${facts['operatingsystem']} is not supported!")
#}
#}
 #  unless $facts['os']['family'] == 'Debian' {
  #        $package_name = 'openssh-server'
  #        $service_name = 'sshd'
#}
#}
