fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'LC Development'
description 'Boosting usb handler for lc_tablet.'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
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

files {
    'html/index.html',
    'html/styles.css',
    'html/script.js'
}