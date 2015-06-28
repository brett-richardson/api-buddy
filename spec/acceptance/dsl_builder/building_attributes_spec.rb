RSpec.describe "Building API attribute data structure from the DSL" do
  subject { endpoint.attributes }

  let(:endpoint)   { definition.endpoints.first }
  let(:definition) { ApiBuddy::Dsl.interpret &proc }

  let :proc do
    Proc.new do
      endpoint '/api/test' do
        attribute 'user_id', :integer
        attribute 'name', :string, example: 'Joe Bloggs'
      end
    end
  end

  # Specs

  its(:size) { should eq 2 }

  it "has a single integer attribute" do
    count = subject.select(&:integer?).size
    expect(count).to eq 1
  end

  it "has a single string attribute" do
    count = subject.select(&:string?).size
    expect(count).to eq 1
  end
end
