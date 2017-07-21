class TodoList

  def initialize(items)


    puts "#{items}"
    @list = []


    def get_items
    @list = ["do the dishes", "mow the lawn"]


  end

  def add_item(items)
      @list = ["do the dishes", "mow the lawn","mop"]
    end


  end



end
new_list = TodoList.new("mow the lawn")
