import UIKit

func solution(_ numbers:[Int]) -> String {
    var number = numbers
    var result : [String] = []
    var num : String
    
    for i in 0 ... number.count - 1 {
        num = String(numbers[i])
        number.remove(at: i)
        for j in 0 ... number.count - 1 {
            num += String(number[j])
        }
        result.append(num)
        num = String(numbers[i])
    
        for j in stride(from: number.count - 1, to: -1, by: -1) {
            num += String(number[j])
        }
        
        result.append(num)
        
        number = numbers
    }

    print(result)
    
    return result.max()!
}


print(solution([3, 30, 34, 5, 9]))
