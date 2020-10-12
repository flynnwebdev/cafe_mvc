class CafeView
  def welcome(name)
    puts "Welcome to #{name}!"
    puts
  end

  def display_menu(menu_items)
    puts "Menu"
    puts "-----"
    menu_items.each do |item|
      puts "#{item.name}    ... $%.2f" % item.price
    end
    puts
  end

  def display_order(order, order_total)
    puts
    if order
      # print the order
      puts "Thank you! Here is your order:"
      puts "------------------------------"
      order.get_items.each do |item_name, quantity|
        puts "#{quantity} #{item_name}"
      end
      puts "Total:    $%.2f" % order_total
    else
      puts "Thank you for coming!"
    end
    puts
  end

  def invalid_input
    puts "Invalid input. Please choose again."
  end

  def get_order
    puts "What would you like to order? Enter (d)one when you are finished."
    return gets.strip
  end

  def get_quantity
    puts "How many would you like?"
    return gets.to_i
  end
end
