# MYSQL INSTALLATION #

exec { "apt-get update":
	command => "/usr/bin/apt-get update"
}

exec { "mysql":
	command => "sudo apt-get install mysql-client-core-5.5"
}