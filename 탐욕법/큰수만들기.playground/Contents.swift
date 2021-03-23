import UIKit

//func combination(_ total : Int, _ cnt : Int ) -> Int {
//    var calcUp : Int = 1
//    var calcDown : Int = 1
//    var totalR = total
//    var cntR = cnt
//
//    for _ in 0 ... cnt - 1 {
//        calcUp *= totalR
//        totalR -= 1
//    }
//
//    for _ in 0 ... cnt - 1 {
//        calcDown *= cntR
//        cntR -= 1
//    }
//
//    return calcUp / calcDown
//}


func solution(_ number: String, _ k:Int) -> String {
    var numbers: [Character] = number.map { $0 }
    var count: Int = 0
    var noMore: Bool = true
    
    while count < k {
        noMore = true
        for i in 0..<numbers.count-1 {
            if numbers[i] < numbers[i+1] { // 앞 숫자가 뒷 숫자보다 작다면 삭제
                numbers.remove(at:i)
                count += 1
                noMore = false
                break
            }
        }
        
        if noMore {
            for _ in 0..<k-count {
                numbers.removeLast()
            }
            break
        }
    }
    let answer = numbers.reduce(""){"\($0)\($1)"}
    return answer
}

print(solution("1231234", 3))


