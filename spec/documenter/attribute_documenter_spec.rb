module ApiBuddy
  RSpec.describe Documenter::AttributeDocumenter do
    subject(:instance) { described_class.new attribute }
    let(:attribute)    { Model::Attribute.new 'name' }

    # Specs

    describe "#example_line" do
      subject { instance.example_line }
      it { should be_a String }
    end
  end
end
