# Wordpress MySQL password as a variable
# Changing password requires custom wordpress template
$wppwd = '!(Bl0g1)'

Package {
	allowcdrom => 'true',
	}

class {"ssh":}
class {"ufw":}
class {"lamp":}
class {"wordpress":}

