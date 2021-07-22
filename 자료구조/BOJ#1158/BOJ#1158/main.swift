//
//  main.swift
//  BOJ#1158
//
//  Created by RooZin on 2021/07/12.
//

import Foundation


func resetArr(_ arr : [Int], _ k : Int) -> [Int] {
    var beforeArr = arr
    var afterArr : [Int] = []
    
    if beforeArr.count > k {
        result.append(beforeArr[k-1])
        beforeArr.remove(at: k - 1)
        
        for i in k - 1 ..< beforeArr.count {
            afterArr.append(beforeArr[i])
        }
        for i in 0 ..< k - 1 {
            afterArr.append(beforeArr[i])
        }
        
    }
    else if beforeArr.count == k {
        result.append(beforeArr[k-1])
        beforeArr.remove(at: k - 1)
        
        afterArr = beforeArr
   
    }
    else if beforeArr.count == 1 {
        result.append(beforeArr[0])
        beforeArr.remove(at: 0)
        
        afterArr = beforeArr
    }
    else {
        result.append(beforeArr[(k % beforeArr.count) - 1])
        beforeArr.remove(at: (k % beforeArr.count) - 1)
        afterArr = beforeArr
    }
    
    return afterArr
}

func printResult(_ result : [Int]) {
    for i in 0 ..< result.count {
        if i == 0 {
            print("<\(result[i]),", terminator: " ")
        }
        else if i == result.count - 1 {
            print("\(result[i])>")
        }
        else {
            print("\(result[i]),", terminator: " ")
        }
    }
}

let input = readLine()!.components(separatedBy: " ").map{ $0 }

let n = Int(input[0])!
let k = Int(input[1])!

var arr : [Int] = []
var result : [Int] = []

for i in 0 ..< n {
    arr.append(i+1)
}

while arr.count != 0 {
    arr = resetArr(arr, k)
}

printResult(result)
