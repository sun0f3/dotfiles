begin
  require 'rubygems'
  require 'hirb'
  Hirb.enable
  Hirb::Formatter.dynamic_config['ActiveRecord::Base']

  require 'wirble' 
  Wirble.init
  Wirble.colorize



rescue
  warn "Couldn't load wirble & Hirb"

end
