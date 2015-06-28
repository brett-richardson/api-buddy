module ApiBuddy
  RSpec.describe Dsl::NestedObjectBuilder do
    subject(:instance) { described_class.new name, &block }

    let(:name)  { 'test' }
    let(:block) { nil }

    describe "#call" do
      subject { instance.call }
      it { should be_a Model::NestedObject }
    end
  end
end
