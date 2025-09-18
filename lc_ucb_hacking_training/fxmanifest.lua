fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'LC Development'
description 'Hacking training usb handler for lc_tablet.'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua'
}

optional_dependencies {
    'ox_lib'
}