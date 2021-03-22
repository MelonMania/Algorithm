import UIKit

//func solution(_ numbers:[Int]) -> [Int] {
//
//    var st = Set<Int>()
//
//    for i in 0 ... numbers.count - 2 {
//        for j in i+1 ... numbers.count - 1{
//            let sum = numbers[i] + numbers[j]
//            st.insert(sum)
//
//        }
//    }
//    return st.sorted()
//}

//func solution(_ arr:[Int]) -> Double {
//    var sum : Int = 0
//    let cnt : Int = arr.count
//
//    for num in arr {
//        sum += num
//    }
//
//    return Double(sum / cnt)
//}
//
//let array : [Int] = [1,2,3,4]
//
//print(solution(array))

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print(a)
