import UIKit


func solution(_ numbers:[Int]) -> String {
    let sort = numbers.sorted{Int("\($0)\($1)")! > Int("\($1)\($0)")!}
    
    return sort[0] == 0 ? "0" : sort.map{String($0)}.joined()
}

//func solution(_ numbers:[Int]) -> String {
//    var number = numbers
//    var result : [String] = []
//    var num : String
//
//    for i in 0 ... number.count - 1 {
//        num = String(numbers[i])
//        number.remove(at: i)
//        for j in 0 ... number.count - 1 {
//            num += String(number[j])
//        }
//        result.append(num)
//        num = String(numbers[i])
//
//        for j in stride(from: number.count - 1, to: -1, by: -1) {
//            num += String(number[j])
//        }
//
//        result.append(num)
//
//        number = numbers
//    }
//
//    print(result)
//
//    return result.max()!
//}


print(solution([3, 30, 34, 5, 9]))



