//
//  main.swift
//  BOJ#9012
//
//  Created by RooZin on 2021/07/07.
//

import Foundation

var testCase : Int = Int(readLine()!)!
var pStrList : [String] = []
var check : [String.Index] = []

for _ in 0 ..< testCase {
    let p_str = readLine()!
    pStrList.append(p_str)
}


for i in 0 ..< pStrList.count {
    let str = pStrList[i]
    var sum = 0
    for j in 0 ..< str.count {
        let index = str.index(str.startIndex, offsetBy: j)
        //let secondIndex = str.index(after: index)
    
        if str[index] == "(" {
           sum += 1
        }
        else if str[index] == ")" {
            sum -= 1
        }
        
        if sum < 0 {
            print("NO")
            break
        }
    }
    
    if sum == 0 {
        print("YES")
    }
    else if sum > 0{
        print("NO")
    }
}


