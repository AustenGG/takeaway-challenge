class Takeaway
  attr_reader :dish_number
  def initialize
  @dish_number = 0                                                               #dish number is a way of identifying each dish
  @orders = []                                                                   #orders is an array which is added to every time and order has been selected
  @prices = {"£5.99 Chicken tikka" => 5.99, "£4.50 Korma" => 4.50}               #This hash stores the prices for each dish to be called on in the show_total method
  @menu = { "£5.99 Chicken tikka" => 1, "£4.50 Korma" => 2 }                     # menu hash stores the dishes with the corresponding value that is used to identify each dish
  @total = 0
  end
 
  def menu_list  # this prints the menu for the user to view
  p @menu
  end
  
  def menu_instructions_display
      p "Enter the number of your selected dish"                                 # Tells the user to input the dish number
  end
 
   def menu_take_input(dish_number)                                              # takes the user input for dish number
     @dish_number = dish_number
   end
   
   def show_selected
      @dish = @menu.key(@dish_number)                                            # prints the dish name with the corresponding identifier
      p "You have selected #{@dish}"   
   end
   
   def add_order                      
     @orders << @dish                                                              # adds the order to the dish array
   end
   
   def show_total     
     @orders.each do |i|
     @total += @prices[i]
   end
      p @total

   end
   
  def expected_delivery
    time = Time.new
    p "Order was placed on:"
    p time.ctime
    order_number = rand(1..23490)
    p "Order number: #{order_number}"
    wait_time = rand(20..59)
    p "Expected wait time: #{wait_time} minutes"
  end
   
  
  require 'twilio-ruby'

  account_sid = '#deleted on push to github'
  auth_token = '#deleted on push to github'
  client = Twilio::REST::Client.new(account_sid, auth_token)
 
  from = ' #deleted on push to github' # Your Twilio number
  to = '#deleted on push to github' # Your mobile phone number

  client.messages.create(
  from: from,
  to: to,
  body: "Your order has been placed!
  Enjoy your food ;)"
)
end

