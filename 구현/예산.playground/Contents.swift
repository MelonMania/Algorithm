import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
 
    var index : Int = 0
    var sum : Int = 0
    let sorted = d.sorted()
    
    while sum < budget {
        sum += sorted[index]
        index += 1
        if sum > budget {
            index -= 1
        }
        
        if index > sorted.count - 1 {
            break
        }
    }
    
    return index
}
print(solution([1,3,2,5,4], 9))
