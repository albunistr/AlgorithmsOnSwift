/*Given two integer arrays startTime and endTime and given an integer queryTime.
 The ith student started doing their homework at the time startTime[i] and
 finished it at time endTime[i].
Return the number of students doing their homework at time queryTime. More
 formally, return the number of students where queryTime lays in the interval
 [startTime[i], endTime[i]] inclusive.
*/

func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var res = 0
        var i = startTime.count - 1
        while i >= 0 {
            if startTime[i] <= queryTime && queryTime <= endTime[i] {
                res += 1
            }
            i -= 1
        }
        return res
    }
