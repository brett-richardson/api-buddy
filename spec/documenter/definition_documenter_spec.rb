module ApiBuddy
  RSpec.describe Documenter::DefinitionDocumenter do
    subject(:instance) { described_class.new definition }
    let(:definition) { Model::Definition.new }

    describe "#to_md" do
      subject { instance.to_md }
      it { should be_a String }
    end
  end
end
