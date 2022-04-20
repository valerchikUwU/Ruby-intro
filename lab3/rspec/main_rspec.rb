
require 'rspec'
require_relative 'main'

RSpec.describe "replacing" do
  it "do ok for CS last symbols" do
    str = "i play CS"
      RSpec.expect(replacing(str)).to eq 2 ** str.length
  end
  it  "do ok for another last symbols" do
    str = "i plat CS GO"
      RSpec.expect(replacing(str)).to eq str.reverse
  end
end
