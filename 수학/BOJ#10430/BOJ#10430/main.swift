//
//  main.swift
//  BOJ#10430
//
//  Created by RooZin on 2021/08/30.
//

import Foundation

let input = readLine()!.components(separatedBy: " ")

let A = Int(input[0])!
let B = Int(input[1])!
let C = Int(input[2])!

print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)


