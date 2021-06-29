import UIKit

func solution(_ arr : [Int]) -> [Int] {
    var result : [Int] = []
    var cnt : Int = 0
    var keep : Int = 0
    
    for i in 0 ..< arr.count {
        for j in 0 ..< arr.count {
            if keep != arr[i] && arr[i] == arr[j] {
                cnt += 1
            }
        }
        
        if cnt > 1 {
            result.append(cnt)
            keep = arr[i]
        }
        
        cnt = 0
    }
    
    if result.count == 0 {
        result.append(-1)
    }
    
    //let result_ = Set(keep)
    
    return result
}


func countOf(_ array: [Int], _ value : Int) -> Int {
    return array.filter{ $0 == value }.count
}

func solution2(_ arr : [Int]) -> [Int] {
    var find : [Int] = []
    var map = Dictionary<Int, Int>()
    
    arr.forEach{ element in
        if let value = map[element] {
            print(value)
            map[element] = value + 1
        }
        else {
            map[element] = 1
            find.append(element)
        }
    }
    
    print(map)
    
    
    var answer : [Int] = []
    
    for element in find {
        if let value = map[element] {
            if value > 1 {
                answer.append(value)
            }
        }
    }
    
    if answer.count == 0 {
        answer.append(-1)
    }
    
    
    return answer
}

print(solution2([3,2,4,4,2,5,2,5,5]))



