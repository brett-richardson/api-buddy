module ApiBuddy
  RSpec.describe Dsl do
    describe ".interpret" do
      subject { described_class.interpret { endpoint '/api/test' } }
      it { should be_a Model::Definition }
    end
  end
end
