module ApiBuddy
  RSpec.describe Model::Endpoint do
    subject(:instance) { described_class.new }

    its(:description) { should be_a String }
  end
end
