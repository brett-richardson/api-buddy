module ApiBuddy
  RSpec.describe Model::Definition do
    subject(:instance) { described_class.new }

    describe "#endpoints" do
      subject { instance.endpoints }

      it { should eq [] }
    end
  end
end
