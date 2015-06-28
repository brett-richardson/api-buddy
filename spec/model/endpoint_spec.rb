module ApiBuddy
  RSpec.describe Model::Attribute do
    subject(:instance) { described_class.new name, type, example: example }

    let(:name)    { 'Test' }
    let(:type)    { nil }
    let(:example) { nil }

    # Specs

    its(:name)    { should eq name }
    its(:type)    { should be_nil }
    its(:example) { should be_nil }
  end
end
