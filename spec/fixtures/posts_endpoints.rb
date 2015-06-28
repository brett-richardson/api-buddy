endpoint '/api/posts', method: :post do
  description 'Creates a post in the database'

  json 'post' do
    attribute 'id', 1, type: :integer
    attribute 'title', 'Ruby is Great', type: :string
    attribute 'author_id', 2, type: :integer
    attribute 'author_name', 'Joe Bloggs', type: :string
  end
end
