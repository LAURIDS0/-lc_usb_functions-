fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'LC Development'
description 'Browser usb handler for lc_tablet.'
version '1.0.0'

ui_page 'html/index.html'

client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua'
}

files {
    'html/index.html',
    'html/styles.css',
    'html/script.js'
}