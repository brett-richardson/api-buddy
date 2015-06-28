title 'Posts API'

endpoint '/api/posts', http_method: :post do
  description 'Creates a post in the database'

  json 'post' do
    attribute 'id', :integer
    attribute 'title', example: 'Ruby is Great'
    attribute 'author_id', :integer
    attribute 'author_name', example: 'Joe Bloggs'

    json 'child' do
      attribute 'author_id', :integer
      attribute 'comment'
    end
  end
end

endpoint '/api/posts' do
  description 'Gets posts from the database'

  collection 'posts' do
    attribute 'name', example: 'Ruby is Great'
    attribute 'author_id', :integer
  end
end
