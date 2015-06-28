RSpec.describe "Building API endpoint data structure from the DSL" do
  let(:definition) { ApiBuddy::Dsl.interpret &proc }
  let(:proc)       { empty_proc }
  let(:empty_proc) { Proc.new {} }

  let :basic_proc do
    Proc.new do
      endpoint('/endpoint') { description 'does things' }
    end
  end

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

      its(:path)        { should eq '/endpoint' }
      its(:http_method) { should eq :get }
      its(:description) { should eq 'does things' }
    end
  end
end
