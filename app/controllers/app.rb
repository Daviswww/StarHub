require 'roda'

module Star
    class App < Roda
        plugin :render, escape: true
        plugin :hash_routes
        plugin :render, views: './app/views/', escape: true
        plugin :assets, path: './app/views/assets', css: ['style.css']
      
        route do |r|
            r.assets
            r.hash_routes('')
            r.get do
                @title = "home"
                view 'home/index'
            end
        end
    end
end
