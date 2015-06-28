module ApiBuddy
  RSpec.describe Documenter::EndpointDocumenter do
    subject(:instance) { described_class.new endpoint }
    let(:endpoint) { Model::Endpoint.new '/api/test' }

    its(:title) { should match %r{## (.)+ `(.)+`} }
  end
end
