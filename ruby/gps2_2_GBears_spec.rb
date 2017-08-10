require_relative 'gps2_2_GBears'

describe make_list(list_str, list_hash) do
  it "creates a hash of items with default quanity of 1 from an unseparated string of items" do
  expect make_list("coffee bread milk", ).to eq {"coffee" => 1, "bread" =>1, "milk" => 1}
  end
end