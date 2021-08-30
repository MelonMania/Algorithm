//
//  main.swift
//  BOJ#2609
//
//  Created by RooZin on 2021/08/30.
//

import Foundation

let input = readLine()!.components(separatedBy: " ")
var big = Int()
var small = Int()
var max = Int()
if input[0] > input[1] {
    big = Int(input[0])!
    small = Int(input[1])!
}
else {
    big = Int(input[1])!
    small = Int(input[0])!
}


for i in 1 ... small {
    if (big % i == 0) && (small % i == 0) {
        max = i
    }
}

let min = max * (big/max) * (small/max)

print(max)
print(min)

