# Lähde TeroKarvinen.com: http://terokarvinen.com/2016/aikataulu-linuxin-keskitetty-hallinta-ict4tn011-10-loppusyksy-2016#comment-21933

class ufw {
	Exec {
		path => '/bin/:/usr/bin/:/sbin/:/usr/sbin/',
	}
	exec { 'ufw22':
		command => 'ufw allow 22/tcp',
		unless => 'ufw status verbose|grep 22/tcp',
	}
        exec { 'ufwenable':
		command => 'ufw enable',
                unless => 'sudo ufw status verbose|grep "Status: active"',
		require => Exec['ufw22'],
        }
	exec { 'ufw allow 80/tcp':
		unless => 'ufw status verbose|grep 80/tcp',
		require => Exec['ufwenable'],
	}
}
