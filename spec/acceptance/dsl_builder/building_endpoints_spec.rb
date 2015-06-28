RSpec.describe "Building API endpoint data structure from the DSL" do
  subject(:definition) { ApiBuddy::Dsl.interpret &proc }
  let(:proc) { Proc.new { title 'Test title' } }

  let :get_proc do
    Proc.new do
      endpoint('/endpoint', http_method: :get) { description 'gets things' }
    end
  end

  let :post_proc do
    Proc.new do
      endpoint('/endpoint', http_method: :post) { description 'posts things' }
    end
  end

  # Specs

  its(:title) { should eq 'Test title' }

  describe "#endpoints" do
    subject(:endpoints) { definition.endpoints }

    its(:size) { should eq 0 }

    context "when #endpoint is called" do
      let(:proc) { get_proc }
      its(:size) { should eq 1 }
    end

    describe "first endpoint" do
      subject { definition.endpoints.first }
      let(:proc) { post_proc }

      its(:http_method) { should eq :post }
      its(:path)        { should eq '/endpoint' }
      its(:description) { should eq 'posts things' }
    end

    context "without defining an http_method" do
      subject { definition.endpoints.first }
      let(:proc) { get_proc }

      its(:http_method) { should eq :get }
    end
  end
end
