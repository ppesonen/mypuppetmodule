# Wordpress MySQL password as a variable
# Changing password requires custom wordpress template
$wppwd = '!(Bl0g1)'

Package {
	allowcdrom => 'true',
	}

include ssh
include ufw
include lamp
include wordpress

