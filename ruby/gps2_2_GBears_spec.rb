require_relative 'gps2_2_GBears'

describe make_list("") do
  it "creates an array from an unseparated string list of items" do
  expect make_list("coffee bread milk").to eq ["coffee", "bread", "milk"]
  end
end