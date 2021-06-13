//
//  main.swift
//  HW3.3
//
//  Created by RooZin on 2021/05/17.
//

import Foundation

var K = Int(readLine()!)!

let coinValue : [Int] = [1, 5, 9, 13, 24]
var index : Int = 0
var count : Int = 0

while(K != 0) { // K가 0이 될때까지
    if K >= coinValue[index] { // K 값보다 코인의 값이 작을때 그 코인이 사용가능하다. 사용된 코인값을 K에서 차감
        K -= coinValue[index]
        print("사용한 코인 : \(coinValue[index])")
        count += 1
    }
    else { // 현재 indexd의 코인이 사용 불가능하기에 index + 1을 통해 가격이 낮은 코인에 접근
        index += 1
    }
}

print("동전 갯수 : \(count)")
