import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let sum = brown + yellow
    var cnt = 0
    
    for i in 1...sum {
        if sum % i == 0 {
            cnt += 1
        }
    }
    
    var keep = [[Int]]()
    var resultIndex : Int = 0
    
    for row in 1...sum {
        if sum % row == 0 {
            let column = sum / row
            if row >= column {
                keep.append([row, column])
            }
        }
    }
    
    
    //var mininum = keep[resultIndex][0] - keep[resultIndex][1]
    
    for index in 0 ... keep.count - 1 {
        if (keep[index][0] - 2) * (keep[index][1] - 2) == yellow {
            resultIndex = index
        }
    }
    
    return keep[resultIndex]
}

print(solution(10, 2))

