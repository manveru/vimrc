default : plugins.nix configuration.nix

plugins.nix : update_plugins.rb plugins.txt
	ruby update_plugins.rb

configuration.nix : update_configuration.rb plugins.nix
	ruby update_configuration.rb

