RSpec.describe "Building API data structure from the DSL" do
  let(:definition) { ApiBuddy::Dsl.interpret &proc }
  let(:proc)       { empty_proc }

  let(:empty_proc) { Proc.new {} }
  let(:basic_proc) { Proc.new { endpoint '/api/test_endpoint' } }

  # Specs

  describe "#endpoints" do
    subject(:endpoints) { definition.endpoints }

    its(:size) { should eq 0 }

    context "when #endpoint is called" do
      let(:proc) { basic_proc }
      its(:size) { should eq 1 }
    end

    describe "first endpoint" do
      subject { endpoints.first }
      let(:proc) { basic_proc }

      its(:path)        { should eq '/api/test_endpoint' }
      its(:http_method) { should eq :get }
    end
  end
end
