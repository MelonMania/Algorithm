import UIKit

func getMax(arr : [Int]) -> Int { // 최대값 찾기
    var num = 0
    for i in 0 ... arr.count - 1 {
        if num < arr[i] {
            num = arr[i]
        }
    }
    
    return num
}

func rotation(arr : [Int], cnt : Int) -> [Int] { // 정렬 후 회전
    
    var rotatedArr = arr.sorted()

    for _ in 0 ... cnt - 1 {
        let num = rotatedArr.last!
    
        for i in stride(from: rotatedArr.count - 1, to: 0, by: -1) {
            rotatedArr[i] = rotatedArr[i-1]
        }
        rotatedArr[0] = num
    }
   
    return rotatedArr
}

func reverseRotation(arr : [Int]) -> Int { // 정렬 후 회전된 배열이 회전연산을 몇 번 적용한 것인지 알아냄
    var arrChk = arr
    let arrSorted = arr.sorted()
    var cnt : Int = 0
    
    while true {
        let num = arrChk.first!
        for i in 0 ... arrChk.count - 2 {
            arrChk[i] = arrChk[i+1]
        }
        arrChk[arrChk.count - 1] = num
        cnt += 1
        
        if arrSorted == arrChk {
            break
        }
    }
    
    return cnt
}

func searchValue(arr : [Int], k : Int) -> Int { // 정렬 후 회전된 배열에서 k를 탐색
    var chk : Int = 0
    
    for i in 0 ... arr.count - 1 {
        if arr[i] == k {
            chk = i
        }
    }
    
    if chk != 0 {
        return chk
    }
    else {
        return -1
    }
}

print(searchValue(arr: rotation(arr: [4, 3, 2, 6, 8, 9], cnt: 3), k: 3))





//print(reverseRotation(arr: rotation(arr: [2,5,4,9,3,8], cnt: 3)))


