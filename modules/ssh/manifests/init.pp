class ssh {
        service { 'ssh':
                ensure => 'running',
                enable => 'true',
                provider => 'systemd',
                require => Package['ssh'],
        }
        package { 'ssh':
                ensure => 'installed',
        }
	file { '/etc/issue.net':
		content => template('ssh/issue.net'),
	}
	file { '/etc/ssh/sshd_config':
		content => template('ssh/sshd_config'),
		notify => Service['ssh'],
	}
}
