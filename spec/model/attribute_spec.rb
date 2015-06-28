module ApiBuddy
  RSpec.describe Model::Attribute do
    subject(:instance) { described_class.new name }

    let(:name) { 'test' }

    # Specs

    its(:name)     { should eq name }
    its(:type)     { should eq :string }
    its(:example)  { should be_nil }
    its(:integer?) { should eq false }
    its(:string?)  { should eq true }

    context "type is set to integer" do
      before { instance.type = :integer }

      its(:type)     { should eq :integer }
      its(:integer?) { should eq true }
      its(:string?)  { should eq false }
    end

    describe "#example=" do
      before { instance.example = "Joe Bloggs" }
      its(:example) { should be_a String }
    end
  end
end
