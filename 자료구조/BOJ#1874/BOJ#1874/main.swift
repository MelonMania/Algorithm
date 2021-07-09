//
//  main.swift
//  BOJ#1874
//
//  Created by RooZin on 2021/07/07.
//

import Foundation

let cnt : Int = Int(readLine()!)!
var stack : [Int] = []
var finish : [Int] = []
var result : [Int] = []
var calc : [String] = []
var stackNum : Int = 0
var check = 0
var baseNum : Int = 1

for _ in 0 ..< cnt {
    let num = Int(readLine()!)!
    stack.append(num)
}


for baseNum in 1 ... cnt {
    result.append(baseNum)
    calc.append("+")
    if baseNum == stack[stackNum] {
        result.removeLast()
        finish.append(baseNum)
        calc.append("-")
        stackNum += 1
    }
    
    while check == 0 && stackNum < cnt {
        if result.last == stack[stackNum] {
            finish.append(stack[stackNum])
            result.removeLast()
            calc.append("-")
            stackNum += 1
        }
        else {
            check = 1
        }
    }
    check = 0
}

for _ in 0 ..< result.count {
    finish.append(result.last!)
    calc.append("-")
    result.removeLast()
}

if finish == stack {
    for symbol in calc {
        print(symbol)
    }
}
else {
    print("NO")
}
