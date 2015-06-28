RSpec.describe "Building API data structure from the DSL" do
  subject :definition do
    ApiBuddy::Dsl.interpret do
      end_point '/api/test_endpoint' do
        json 'test' do
          attribute 'name', 'Brett', :string
        end
      end
    end
  end

  # Specs

  describe "#endpoints" do
    subject { definition.endpoints }

    it { should be_an Array }
    its(:length) { should eq 1 }
  end
end
