import UIKit


func solution(_ answers:[Int]) -> [Int] {
    
    let std1 : [Int] = [1, 2, 3, 4, 5]
    let std2 : [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let std3 : [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var result = [Int:Int]()
    
    for index in 0 ... answers.count - 1 {
        if answers[index] == std1[index % std1.count] {
            result[1] = ( result[1] ?? 0 ) + 1
        }
        if answers[index] == std2[index % std2.count] {
            result[2] = ( result[2] ?? 0 ) + 1
        }
        if answers[index] == std3[index % std3.count] {
            result[3] = ( result[3] ?? 0 ) + 1
        }
    }

    return result.filter { $0.value == result.values.max() }.keys.sorted()
}

let answer = [1, 2, 3, 4, 5]

print(solution(answer))

