#stock_picker([17,3,6,9,15,8,6,1,10])
#>[1,4]
#gets the greatest difference in array assuming the lowest number has to come first
#returns the index of lowest number, followed by index of highest number

input = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  greatest_diff = 0
  lowest_price_with_index = [0, prices[0]]
  differental = []

  prices.each_with_index do |price, index|
    if greatest_diff < (price - lowest_price_with_index[1])
      greatest_diff = price - lowest_price_with_index[1]
      differental = [lowest_price_with_index[0], index]
    elsif price < lowest_price_with_index[1]
      lowest_price_with_index = [index, price]
    end
  end

  return differental
  
end

puts(stock_picker(input))