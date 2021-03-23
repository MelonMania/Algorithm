import UIKit

func solution(_ number: String, _ k:Int) -> String {
    let numbers = number.map { String($0) }
    var stack : [String] = []
    var count : Int = 0
  
    for i in 0 ..< numbers.count {
        while count < k && stack.count != 0 && stack.last! < numbers[i] {
            stack.removeLast()
            count += 1
        }
        print(stack)

        stack.append(numbers[i])
    
    }
   
    return String(stack.joined().prefix(number.count - k))
}

print(solution("4177252841", 4))



//func solution(_ number: String, _ k:Int) -> String { /// 시간 초과
//    var numbers = number.map { String($0) }
//    var stack : [String] = []
//    var delete : Int = 0
//    var count : Int = 0
//
//    while (delete < k) {
//        for i in 0..<numbers.count - 1 {
//                if numbers[i] < numbers[i+1] {
//                    numbers.remove(at: i)
//                    delete += 1
//                    break
//                }
//            count = i
//        }
//        if (count == numbers.count - 2) { break }
//    }
//
//    if delete == k {
//        stack = numbers
//    }
//    else {
//        for _ in 0 ..< k - delete {
//            numbers.removeLast()
//        }
//        stack = numbers
//    }
//
//    return String(stack.joined().prefix(number.count-k))
//}



