module ApiBuddy
  RSpec.describe Dsl::DefinitionBuilder do
    subject(:instance) { described_class.new {} }

    its(:call) { should be_a Model::Definition }
  end
end
