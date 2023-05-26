resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"
fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
games {"rdr3"}

autor ('DVR')

client_scripts {
    'config.lua',
    'locales/language.lua',
    'client/client.lua'
}

server_scripts {
    'config.lua',
    'locales/language.lua',
    'server/server.lua'
}