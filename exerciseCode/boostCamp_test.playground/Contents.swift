import Foundation

func solution(_ v: [[Int]]) -> [Int]
{
    var ans = [Int]()
    var keep : Int = 0
    var first : [Int] = []
    var second : [Int] = []
    
    for i in 0 ..< v.count {
        first.append(v[i][0])
    }
    for i in 0 ..< v.count {
        second.append(v[i][1])
    }
    
    first = first.sorted()
    second = second.sorted()
    
    for i in 0 ..< first.count - 1 {
        if first[i] == first[i+1] {
            first[i] = 0
            first[i+1] = 0
        }
        if second[i] == second[i+1] {
            second[i] = 0
            second[i+1] = 0
        }
    }
    
    for i in 0 ..< first.count {
        if first[i] != 0 {
            ans.append(first[i])
        }
    }
    
    for i in 0 ..< second.count {
        if second[i] != 0 {
            ans.append(second[i])
        }
    }
  
    return ans
}
