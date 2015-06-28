RSpec.describe "Building API data structure from the DSL" do
  subject(:generated) { ApiBuddy::Dsl.interpret fixture }

  let(:fixture) { 'spec/fixtures/posts_endpoints.rb' }

  its(:endpoints) { should be_an Array }
end
