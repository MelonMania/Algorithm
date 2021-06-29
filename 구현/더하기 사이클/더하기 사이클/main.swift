//
//  main.swift
//  더하기 사이클
//
//  Created by RooZin on 2021/06/29.
//

import Foundation

var num = readLine()!
var cnt = 0
var check = ""

if Int(num)! < 10 {
    num = "0\(num)"
}

check = num

while check != num || cnt == 0 {
    let sum = (Int(num)! / 10 + Int(num)! % 10) % 10
    num = "\(Int(num)! % 10)\(sum)"
    cnt += 1
}

print(cnt)

