RSpec.describe TestGem do
  it "has a version number" do
    expect(TestGem::VERSION).not_to be nil
  end

  it "greet test" do
    expect(TestGem.greet).to eq 'Hello World'
  end
end
