class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6hfj+eUNTcjUJP6nY4t8dpeEgRSdF8GaZeYZiOCxqtsuwT/hPNvI0WfeYxhmCghG1GOws3nkQf4xxdWPITg7jp0TaKFwiGhGz2qxwi8sSGgsjcQsCqjgNg8CFOiDQ3slvXTnuYIPrEKYLmNFOv0E6HNALr677EXZMGihZn3Ao4NLzNpfkUD469EV4Ensbyk02Dt49GLQPFeWV0OcA2Da7QDneXWTUwD37SUHy2RN17iIopZHqFhmJbU8s0PF9J8ynL6BiHPfA0/kSn6lckrptc9NHBDRTti9tyuwcxXxZhPhC0Ljnx2gimP5f9gXMOGb1zCn5iH1TDiM5LMMmZNl5',
	}  
}
