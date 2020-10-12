# Write a simple cafe application. 

# The cafe has a limited menu with 3 items:
# Lattes sell for $4
# Scones sell for $5
# Tea sells for $3

# Your application should:
# 1. Print a welcome message
# 2. Show the menu with prices
# 3. Ask the customer for their order (what they would like and quantity). Continue to ask for new items until they say they are done.
# 4. When the order is complete, print the order and total cost.

# Order class will represent the customer's order. It will have a hash of item names and quantities
# MenuItem class will represent a single menu item. It will have a name and price.
# Menu class will represent a cafe menu. It will have an array of items.
# Cafe class will represent a cafe. It will have a menu, an order, and a name.


# Main - our cafe application
require_relative "controllers/cafe_controller.rb"

app = CafeController.new
app.run
