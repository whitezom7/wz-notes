fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name "wz-notes"
description "A Script to create shareable notes "
author "Whitezom"
version "1.0"

shared_scripts {
	'@ox_lib/init.lua',
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

dependencies {
    'ox_lib',
    'ox_inventory',
}
server_scripts {
	'server/*.lua'
}


