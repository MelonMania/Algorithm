//
//  main.swift
//  HW3.3
//
//  Created by RooZin on 2021/05/17.
//

import Foundation

var K = Int(readLine()!)!

let coinValue : [Int] = [365, 91, 52, 28, 13, 7, 4, 1]
var index : Int = 0
var count : Int = 0

while(K != 0) {
    if K >= coinValue[index] {
        K -= coinValue[index]
        print("사용한 코인 : \(coinValue[index])")
        count += 1
    }
    else {
        index += 1
    }
}

print("동전 갯수 : \(count)")
