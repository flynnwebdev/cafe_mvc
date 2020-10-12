require_relative "../models/cafe"
require_relative "../views/cafe_view"

class CafeController
  def initialize
    @cafe_model = Cafe.new("Coder Cafe", { "latte" => 4.00, "tea" => 3.00, "scone" => 5.00 })
    @cafe_view = CafeView.new
    @cafe_view.welcome(@cafe_model.name)
  end

  def validate_input(input)
    case input[0].downcase
    when "l"
      return "latte"
    when "s"
      return "scone"
    when "t"
      return "tea"
    when "d"
      return "done"
    else
      @cafe_view.invalid_input
      return nil
    end
  end

  def run
    # Ask the customer for their order (what they would like and quantity). Continue to ask for new items until they say they are done.
    loop do
      # 2. Show the menu with prices
      @cafe_view.display_menu(@cafe_model.menu.menu_items)
      # puts "What would you like to order? Enter (d)one when you are finished."
      # input = gets.strip
      input = @cafe_view.get_order
      item = validate_input(input)
      # break if we're done
      break if item == "done"
      if item
        # puts "How many would you like?"
        # quantity = gets.to_i
        quantity = @cafe_view.get_quantity
        @cafe_model.add_to_order(item,quantity) if quantity > 0
      end
    end

    # 4. When the order is complete, print the order and total cost.
    @cafe_view.display_order(@cafe_model.get_order, @cafe_model.order_total)
  end
end
