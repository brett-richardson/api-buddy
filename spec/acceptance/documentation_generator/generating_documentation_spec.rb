RSpec.describe "Generating documentation from a Model::Definition object" do
  include DocumentHelpers

  subject { ApiBuddy::Documenter.build definition }

  let :definition do
    ApiBuddy::Dsl.interpret_file './spec/fixtures/posts_endpoints.rb'
  end

  it { should be_a String }

  it "includes the correct endpoint title" do
    should include '## POST `/api/posts`'
  end

  it "includes the endpoint's description" do
    should include 'Creates a post in the database'
  end

  it "includes the example" do
    should include '```javascript'
  end

  it "generates exactly the correct markdown from the definition" do
    expect_to_equal_file_contents './spec/fixtures/posts_endpoints.md', subject
  end
end
