/*Given an integer, convert it to a Roman numeral.*/

class Solution {
    func intToRoman(_ num: Int) -> String {
        let val = [1000,900,500,400,100,90,50,40,10,9,5,4,1];
        let rom = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"];

        var copyNum = num
        var res = ""

        while copyNum != 0 {
            for (i, d) in val.enumerated() where copyNum - d >= 0 {
                copyNum -= d
                res += rom[i]
                break
            }
        }

        return res
    }
}
