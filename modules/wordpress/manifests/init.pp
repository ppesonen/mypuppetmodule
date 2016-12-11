class wordpress {

	user { 'blogaaja':
		ensure => 'present',
		managehome => true,
		password => '1234',
		require => Exec['wordpressing'],
	}

	Exec {
		path => '/bin/:/usr/bin/:/sbin/:/usr/sbin/',
	}

	exec { 'wordpressing':
		command => 'wget https://wordpress.org/latest.tar.gz -P /etc/skel && tar -xvf /etc/skel/latest.tar.gz -C /etc/skel && mv /etc/skel/wordpress /etc/skel/public_html && rm /etc/skel/latest.tar.gz',
		unless => 'ls /etc/skel/public_html',
	}

	
}
