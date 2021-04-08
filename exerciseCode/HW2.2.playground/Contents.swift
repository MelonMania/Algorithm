import UIKit

func search(arr : [Int]) -> Int { // 2.2의 (a)
    var ans : Int?
    var positive : [Int] = []
    positive = arr
    
    for i in 0 ... arr.count - 1 {
        if arr[i] < 0 {
            positive[i] = Int(TID_NULL)
        }
    }
    
    for i in 0 ... positive.count - 1 {
        if positive[i] == i {
            ans = i
        }
    }
    
    if let safeans = ans {
        return safeans
    }
    else {
        return -1
    }
}

func searchInPositiveNumber(arr : [Int]) -> Int { // 2.2 (b)
    var ans : Int?
    
    for i in 0 ... arr.count - 1 {
        if arr[i] == i {
            ans = i
        }
    }
    
    if let safeans = ans {
        return safeans
    }
    else {
        return -1
    }
    
}

print(search(arr: [3,1,4,7,6,8,23]))
