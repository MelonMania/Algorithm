import UIKit

var keepArray : [Int] = []
var maxArray : [Int] = []
var maxDic : [Int : String] = [:]
var cnt : Int = 0

func searchMaxSection(arr : [Int], left : Int, right : Int) {
    var sum : Int = 0
    
    for i in left ... right {
        sum += arr[i]
    }
    
    keepArray.append(sum)
    
    if left < right - 1 {
        searchMaxSection(arr: arr, left: left + 1, right: right)
        cnt += 1
    }
   
    if cnt == right - 1 {
        let newLeft = 0
        cnt = 0
        let index = keepArray.firstIndex(of: keepArray.max()!)
        maxDic.updateValue("a : \(index!) b : \(right) ", forKey: keepArray.max()!)
        maxArray.append(keepArray.max()!)
        keepArray.removeAll()
        searchMaxSection(arr: arr, left: newLeft, right: right - 1)
    }
}

let arr = [31, -41, 59, 26, -53, 58, 97, -93, -23, 84]
searchMaxSection(arr: arr , left: 0, right: arr.count - 1)
print(maxDic[maxArray.max()!]!)
