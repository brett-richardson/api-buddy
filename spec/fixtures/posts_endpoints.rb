endpoint '/api/posts', method: :post do
  description 'Creates a post in the database'

  json 'post' do
    attribute 'id', :integer
    attribute 'title', :string, example: 'Ruby is Great'
    attribute 'author_id', :integer
    attribute 'author_name', :string, example: 'Joe Bloggs'
  end
end
