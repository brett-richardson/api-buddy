module ApiBuddy
  RSpec.describe Documenter do
    let(:definition) { Model::Definition.new }

    describe ".build" do
      subject { described_class.build definition }
      it { should be_a String }
    end
  end
end
