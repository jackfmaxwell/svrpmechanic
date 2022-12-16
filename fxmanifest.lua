fx_version 'cerulean'
game 'gta5'

description 'mechanic job'
author 'jack'
version '2.0.1'

shared_script 'config.lua'

client_scripts {
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/CircleZone.lua',
	'client/client.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/server.lua'
}

lua54 'yes'
