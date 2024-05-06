/*Given a roman numeral, convert it to an integer.*/

func romanToInt(_ s: String) -> Int {
    let dict: [Character: Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
    var num = 0, tmp = 0

    for i in s {
        let val = dict[i] ?? 0
        num += (val <= tmp) ? tmp : -tmp
        tmp = val
    }
    num += tmp
    return num
}
