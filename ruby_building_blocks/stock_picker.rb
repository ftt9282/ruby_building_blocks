def stock_picker(stocks)
	lowest_price = stocks.min
	highest_price = stocks.max
	if lowest_price == stocks[-1]
		stocks.pop
		lowest_price = stocks.min
	end
	if highest_price == stocks[0]
		stocks.shift
		highest_price = stocks.max
	end
	return lowest_price, highest_price
end

stock_prices = [17, 8, 2, 3, 15, 6, 1]
puts stock_picker(stock_prices)