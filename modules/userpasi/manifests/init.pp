class userpasi {
	user { 'ppesonen':
		ensure => 'present',
		managehome => true,
		groups => ['sudo', 'adm'],
	}
}
