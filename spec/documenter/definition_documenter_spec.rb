module ApiBuddy
  RSpec.describe Documenter::DefinitionDocumenter do
    subject(:instance) { described_class.new definition }
    let(:definition) { Model::Definition.new }
  end
end
