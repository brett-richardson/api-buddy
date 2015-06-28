module ApiBuddy
  RSpec.describe Dsl do
    describe ".interpret" do
      subject { described_class.interpret file_name }
      let(:file_name) { double }

      it { should be_a Model::ApiDefinition }
    end
  end
end
