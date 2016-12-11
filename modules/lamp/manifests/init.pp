class lamp {
	package { 'apache2':
		ensure => 'installed',
	}
	file { '/etc/apache2/mods-available/php7.0.conf':
		content => template('lamp/php7.0.conf'),
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
	}
	package { 'php-mysql':
		ensure => 'installed',
	}
	exec { 'a2enmod userdir':
		path => '/bin/:/usr/bin/:/sbin/:/usr/sbin/',
		unless => 'ls /etc/apache2/mods-enabled/userdir.conf',
		require => Package['apache2'],
		notify => Service['apache2'],
	}
}
