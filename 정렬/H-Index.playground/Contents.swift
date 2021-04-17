import UIKit

// 13번 케이스 시간 초과
//func solution(_ citations:[Int]) -> Int {
//    var cnt = 0
//    var kept : [Int] = []
//    let max : Int = citations.max()!
//
//    for h in 0 ... max {
//        for j in 0 ... citations.count - 1 {
//            if citations[j] >= h {
//                cnt += 1
//            }
//        }
//        if h <= cnt {
//            kept.append(h)
//        }
//        cnt = 0
//    }
//
//    return kept.max()!
//}

func solution(_ citations:[Int]) -> Int {

    let sorted = citations.sorted(by: >)

    for i in 0..<sorted.count {

        if i >= sorted[i] {
            return i
        }
    }

    return 0
}

print(solution([3,0,6,1,5]))
