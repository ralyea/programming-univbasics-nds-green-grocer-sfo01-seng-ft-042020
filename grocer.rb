def find_item_by_name_in_collection(name, collection)	
counter = 0
  while counter < collection.size do
  item = collection[counter]
  if (item[:item] == name )
      return item
  end
  counter += 1
	end
	nil
end
  
def increment_count_of_item (cart, item_name)
  cart_index = 0
  while cart_index < cart.size do
    current_item = cart[cart_index]
    if ( current_item[:item] == item_name )
      current_item[:count] += 1
    end
    cart_index += 1
  end
  cart
end
  
  # Implement me first!
  #
  # Consult README for inputs and outputs



  def consolidate_cart(cart)
  updated_cart = Array.new
  
  index = 0
  
  while index < cart.size do
    current_item = cart[index]
    if ( find_item_by_name_in_collection( current_item[:item], updated_cart ) == nil)
      current_item[:count] = 1
      updated_cart.push(current_item)
    else
      increment_count_of_item( updated_cart, current_item[:item] )
    end
    index += 1
  end
  updated_cart
end
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
