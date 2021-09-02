//
//  main.swift
//  BOJ#1929
//
//  Created by RooZin on 2021/09/02.
//

import Foundation

let input = readLine()!.components(separatedBy: " ")

let small = Int(input[0])!
let big = Int(input[1])!
var check = 0

for num in small ... big {
    for index in 2 ... Int(sqrt(Double(num))) + 1 {
        if num % index == 0 {
            check += 1
        }
    }
    if check == 0 {
        print(num)
    }
    check = 0
}
