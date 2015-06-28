module ApiBuddy
  RSpec.describe Dsl do
    describe ".interpret" do
      subject { described_class.interpret { endpoint '/api/test' } }
      it { should be_a Model::Definition }
    end

    describe ".interpret_file" do
      subject do
        described_class.interpret_file './spec/fixtures/posts_endpoints.rb'
      end

      it { should be_a Model::Definition }
    end
  end
end
