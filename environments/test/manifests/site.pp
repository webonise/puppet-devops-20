
  file { '/var/www':
    ensure => 'directory',
    owner   => root,
    group   => root,
    mode    => '755'
  }

  file {'/var/www/test-app/current/index.html':
    ensure => 'file',
    content => 'This is a sample app.',
    owner   => root,
    group   => root,
    mode    => '755'
  }
    file {'/var/www/test-app/releases':
    ensure => 'directory',
    owner   => root,
    group   => root,
    mode    => '755'
  }
  
  file {'/var/www/test-app/shared':
    ensure => 'directory',
    owner   => root,
    group   => root,
    mode    => '755'
  }
