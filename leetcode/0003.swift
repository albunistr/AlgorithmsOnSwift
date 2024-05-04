/*Given a string s, find the length of the longest substring
  without repeating characters.*/
func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxCount = 0
        
        let arr = Array(s)
        var currentArr = [Character]()

        for i in 0..<arr.count {
            if let idx = currentArr.firstIndex(of: arr[i]) {
                currentArr.removeSubrange(0...idx)
            }

            currentArr.append(arr[i])
            maxCount = max(maxCount, currentArr.count)
        }

        return maxCount
    }
