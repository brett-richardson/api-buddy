module ApiBuddy
  RSpec.describe Model::ApiDefinition do
    subject(:instance) { described_class.new }

    describe "#endpoints" do
      subject { instance.endpoints }

      it { should eq [] }
    end
  end
end
