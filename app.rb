require 'roda'
require 'tilt/sass'

class App < Roda
  plugin :render, escape: true
  plugin :hash_routes
  plugin :assets, path: './assets', css: ['style.css'], js: ['navbar_menu.js']
  compile_assets

  Unreloader.require('routes') {}

  route do |r|
    r.assets
    r.hash_routes('')
    r.get do
      @title = "home"
      view 'home/index'
    end
  end
end