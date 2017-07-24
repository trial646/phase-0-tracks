#require_relative 'todo_list.rb'
# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

#require_relative 'file_with_the_code_in_it_name'
require_relative 'guess_game'

describe do
  #let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "takes the secret word input and prints it" do
    list.add_item("mop")
    expect(input_secret("fun")).to eq ["fun"]
  end

  # it "prints a string of dashes the same number in length as the secret word " do
  #   expect(test_statement).to eq "hello world"
  # end

  # it "adds an item to the list" do
  #   list.add_item("mop")
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  # end

  # it "deletes an item" do
  #   list.delete_item("do the dishes")
  #   expect(list.get_items).to eq ["mow the lawn"]
  # end

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  # end
end