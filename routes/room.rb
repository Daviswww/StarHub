class App
  hash_branch 'room' do |r|
    r.on 'view1' do
      r.get do
        @title = "Hello World"
        view 'index'
      end
    end

    r.get do
      @title = "room"
      view 'room/index'
    end
  end
end
