/*You are given an array prices where prices[i] is the price of a given stock on
 the ith day.
 
 You want to maximize your profit by choosing a single day to buy one stock and
 choosing a different day in the
 future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot
 achieve any profit, return 0. */

func maxProfit(_ prices: [Int]) -> Int {
    
    guard prices.count > 1 else { return 0 }
    
    var best = 0, current = 0
    
    for index in 1..<prices.endIndex {
        current = max(0, current + prices[index] - prices[index-1])
        best = max(best, current)
    }
    
    return best
}

