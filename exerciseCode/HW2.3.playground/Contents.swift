import UIKit

func searchMaxSection(arr : [Int]) {
    var maxDic : [Int : String] = [:]
    var sumValue : [Int] = []
    var maxValue : [Int] = []
    
    var num : Int = 0

    for a in 0 ... arr.count - 2 {
        for b in a + 1 ... arr.count - 1 {
            for index in a ... b {
                num += arr[index]
            }
            sumValue.append(num)
            num = 0
        }
        
        let max = sumValue.max()!
        let maxIndex = sumValue.firstIndex(of: max)!
        maxValue.append(max)
        let value = a + maxIndex + 1
        
        let message = "a : \(a) / b : \(value)"
        
        maxDic.updateValue(message, forKey: max)
        sumValue.removeAll()
    }
    
    print(maxDic[maxValue.max()!]!)
    print("최대값 : \(maxValue.max()!)")
}

searchMaxSection(arr: [31, -41, 59, 26, -53, 58, 97, -93, -23, 84])

