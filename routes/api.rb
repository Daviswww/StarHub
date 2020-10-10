class App
  hash_branch 'api' do |r|
    r.on do
      post_list = {
        1 => "Post[1]"
      }
      r.is Integer do |id|
        post_list[id]
      end
      # post_list.values.map { |post| post }.join(" | ")
    end
  end
end
