RSpec.describe "Building nested API attribute data structure from the DSL" do
  subject(:attributes) { endpoint.attributes }

  let(:endpoint)   { definition.endpoints.first }
  let(:definition) { ApiBuddy::Dsl.interpret &proc }

  let :proc do
    Proc.new do
      endpoint '/api/test' do
        json 'nested' do
          attribute 'name'
          attribute 'author_id', :integer

          json 'nested_further' do
            attribute 'deep', example: 'man'
          end
        end
      end
    end
  end

  # Specs

  its(:size) { should eq 1 }

  its "nested attribute should have the type of 'object'" do
    expect(attributes.first).to be_object
  end

  describe "the first nested set of attributes" do
    subject(:nested) { attributes.first.attributes }

    its(:size)  { should eq 3 }
    its(:first) { should be_string }

    describe "2nd level of nesting" do
      subject(:deep) { nested.last.attributes }

      its(:size)  { should eq 1 }
      its(:first) { should be_string }
    end
  end
end
