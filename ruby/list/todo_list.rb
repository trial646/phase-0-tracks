class TodoList
  def initialize(array)
    @array = array 
  end 
  
  def get_items
    p @array
  end 
  
  def add_item(new_item)
    @new_item = new_item
    @array << new_item
  end
  
  def delete_item(removed_item)
    @removed_item = removed_item
    @array.delete(removed_item)
  end 

   def get_item(index)
     @array.fetch(index)
   end 
    
end 

todo_list = TodoList.new(["do the dishes", "mow the lawn"])
todo_list.get_items
todo_list
todo_list.add_item("mop")
todo_list.delete_item("do the dishes")
p todo_list
p todo_list.get_item(0)





# Program creates an array containing two strings 
#and puts it inside of the class on initialization 

# array = ["string1", "string2"]
# p array 