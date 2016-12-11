class lamp {
	package { 'apache2':
		ensure => 'installed',
	}

	service { 'apache2':
		ensure => 'running',
		enable => 'true',
		provider => 'systemd',
		require => Package['apache2'],
	}

	package { 'mysql-server':
		ensure => 'installed',
	}

	service { 'mysql':
		ensure => 'running',
		enable => 'true',
		provider => 'systemd',
		require => Package['mysql-server'],
	}

	package { 'mysql-client':
		ensure => 'installed',
	}

	package { 'libapache2-mod-php':
		ensure => 'installed',
		require => Package['apache2'],
	}
	package { 'php-mysql':
		ensure => 'installed',
	}

	exec { 'mysql-db':
		command => "mysql -uroot -e \"create database blogi; grant all on blogi.* to blogaaja@localhost identified by '!(Bl0g1)';\"",
		unless => 'mysqlshow blogi',
		path => '/bin/:/usr/bin/:/sbin/:/usr/sbin/',
		require => Service['mysql'],
	}

}
