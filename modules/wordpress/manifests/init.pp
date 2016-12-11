class wordpress {
	Exec {
		path => '/bin/:/usr/bin/:/sbin/:/usr/sbin/',
	}
	exec { 'wordpressing':
		require => Service['apache2'],
		command => 'wget https://wordpress.org/latest.tar.gz -P /tmp && tar -xvf /tmp/latest.tar.gz -C /var/www/ && rm -rf /var/www/html && mv /var/www/wordpress /var/www/html && rm /tmp/latest.tar.gz',
		unless => 'ls /var/www/html/wp-admin',
	}
	file { '/var/www/html/wp-config.php':
		content => template('wordpress/wp-config.php'),
		require => Exec['wordpressing'],
	}	
}
