module ApiBuddy
  RSpec.describe Dsl::EndpointBuilder do
    subject(:instance) { described_class.new path, &block }

    let(:path)  { 'test' }
    let(:block) { nil }

    describe "#call" do
      subject { instance.call }
      it { should be_a Model::Endpoint }
    end
  end
end
