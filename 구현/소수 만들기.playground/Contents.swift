import Foundation

func solution(_ nums:[Int]) -> Int {
    
    var sum : [Int] = []
    
    for i in 0 ..< nums.count - 2 {
        for j in i+1 ..< nums.count - 1 {
            for k in j+1 ..< nums.count {
                sum.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    return prime(sum)
}

func prime(_ sum:[Int]) -> Int {
    var resultList : [Int] = []
    
    for i in 0 ..< sum.count {
        var result = 0
        for j in 1 ... sum[i] {
            if sum[i] % j == 0 {
                result += 1
            }
        }
        if result == 2 {
            resultList.append(sum[i])
        }
    }
    
    return resultList.count
}

print(solution([1,2,3,4]))
