# problem link on leetcode
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)

    lowest = prices[0]
    current_diff = 0
    max_diff = 0

    prices.each do |price|
        if price< lowest
            lowest = price
        end

        current_diff = price - lowest

        if current_diff > max_diff
            max_diff=current_diff
        end
    end

    max_diff
end