fx_version 'bodacious'
game 'gta5'
lua54 'yes'

name "sc_cartax"
author "ScubeScripts"
version "1.0.4"
description "A Simple Script that allows Cartaxes on your Server"

server_scripts {
  '@oxmysql/lib/MySQL.lua',
	'server/server.lua',
	'server/updater.lua'
}

client_scripts {
	'client/client.lua'
}

shared_script {
  'config.lua'
}

dependencies {
  'oxmysql'
}