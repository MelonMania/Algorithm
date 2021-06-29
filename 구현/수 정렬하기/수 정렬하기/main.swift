//
//  main.swift
//  수 정렬하기
//
//  Created by RooZin on 2021/06/29.
//

import Foundation

let cnt = Int(readLine()!)!

var arr : [Int] = []

for _ in 0 ..< cnt {
    let num = Int(readLine()!)!
    arr.append(num)
}

arr = arr.sorted()

for i in 0 ..< arr.count {
    print(arr[i])
}
