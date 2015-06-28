RSpec.describe "Building API data structure from the DSL" do
  let(:definition) { ApiBuddy::Dsl.interpret {} }

  # Specs

  describe "#endpoints" do
    subject { definition.endpoints }

    its(:size) { should eq 0 }

    context "when #endpoint is called" do
      let :definition do
        ApiBuddy::Dsl.interpret { endpoint '/api/test_endpoint' }
      end

      its(:size) { should eq 1 }
    end
  end
end
