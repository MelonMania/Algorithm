import UIKit

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {

    let reserveReal = reserve.filter{!lost.contains($0)}
    print(reserveReal)
    let lostReal = lost.filter{!reserve.contains($0)}
    
    var cnt = n - lostReal.count
    
    if lostReal.count >= reserveReal.count {
        for reserveStd in reserveReal {
            for lostStd in lostReal {
                if (lostStd == reserveStd - 1) || (lostStd == reserveStd + 1) {
                    cnt += 1
                    break
                }
            }
        }
    }
    else {
        for lostStd in lostReal {
            for reserveStd in reserveReal {
                if (lostStd == reserveStd - 1) || (lostStd == reserveStd + 1) {
                    cnt += 1
                    break
                }
            }
        }
    }
   
    return cnt
}

print(solution(5, [2,3], [2,3,5]))
