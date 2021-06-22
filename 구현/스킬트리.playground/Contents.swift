import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    
    let arr = skill.map{$0}
    var cnt : Int = 0
    var result : Int = skill_trees.count
    var j : Int = 0
    var kept : Int = 0
    var first : Int = 0
    
    for i in 0 ..< skill_trees.count {
        let skillArr = skill_trees[i].map{$0}
            for k in 0 ..< skillArr.count {
                if j == 0 && arr[j] != skillArr[k] {
                    result -= 1
                }
                else {
                    if j == 0 {
                        first = k
                    }
                    else {
                        kept = k
                        if first > kept {
                            result -= 1
                        }
                    }
                    j += 1
                }
            }
        
        if cnt > 1 {
            result += 1
        }
        cnt = 0
    }
    
    return result
}

print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))


