module ApiBuddy
  RSpec.describe Dsl::Builder do
    subject(:instance) { described_class.new }

    its(:call) { should be_a Model::ApiDefinition }
  end
end
