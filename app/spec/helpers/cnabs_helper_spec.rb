require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CnabsHelper. For example:
#
# describe CnabsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CnabsHelper, type: :helper do
  it 'total_class_color return red-text if value is below 0' do
    expect(total_class_color(-1)).to eq 'red-text'
  end

  it 'total_class_color return nil if value is above 0' do
    expect(total_class_color(1)).to eq nil
  end

end
