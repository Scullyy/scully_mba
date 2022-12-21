fx_version 'cerulean'
game 'gta5'

author 'https://discord.gg/scully'
description 'A resource to change the interior of gabz mba and sync it across all players including newly connected ones.'

dependencies {
    '/server:5848',
    '/onesync',
    'cfx-gabz-mba'
}

shared_script 'config.lua'

client_script 'client/main.lua'

server_script 'server/main.lua'