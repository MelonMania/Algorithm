//
//  main.swift
//  BOJ#1978
//
//  Created by RooZin on 2021/09/01.
//

import Foundation

let cnt = Int(readLine()!)!

let input = readLine()!.components(separatedBy: " ")
var check = 0
var result = 0

for i in 0 ..< cnt {
    for j in 1 ... Int(input[i])! {
        if Int(input[i])! % j == 0 {
            check += 1
        }
    }
    if check == 2 {
        result += 1
    }
    check = 0
}

print(result)
