def stock_picker(array)
  cut_array = []
  array.each { |num| cut_array.push(num) }
  profit = 0
  days = [0, 0]

  array.each_with_index do |value, index|
    if cut_array.length > 1
        cut_array.slice!(0)
    end
    if (cut_array.max - value) > profit
      profit = cut_array.max - value
      days[0] = index
      days[1] = array.index(cut_array.max)
    end
  end
  return days
end

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0. You need to buy before you can sell
