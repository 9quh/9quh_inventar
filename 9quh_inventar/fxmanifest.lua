fx_version 'adamant'

game 'gta5'

description '9quh Inventar'

version '1.3.0'

server_scripts {
  '@async/async.lua',
  '@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'server/main.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'client/main.lua',
  'config.lua'
}

ui_page 'html/ui.html'
files {
  'html/ui.html',
  'html/ui.css',
  'html/img/cursor.png',
  'html/ui.js',
}

dependencies {
	'es_extended',
	'esx_cleaning',
	'esx_vehicleshop'
}

exports {
	'ReloadInventory',
  'Waffen',
  'toggleField'
}







