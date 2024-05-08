/*There is a robot starting at the position (0, 0), the origin, on a 2D plane.
 Given a sequence of its moves, judge if this robot ends up at (0, 0) after it
 completes its moves.*/

func judgeCircle(_ moves: String) -> Bool {
        let movesArr = Array(moves)
        var rCount = 0, lCount = 0, uCount = 0, dCount = 0
        for i in movesArr {
            switch i {
                case "R":
                rCount += 1
                case "U":
                uCount += 1
                case "D":
                dCount += 1
                default:
                lCount += 1
            }

        }

        if lCount == rCount && uCount == dCount {
            return true
        }

        return false
    }
