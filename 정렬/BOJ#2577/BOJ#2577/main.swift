//
//  main.swift
//  BOJ#2577
//
//  Created by RooZin on 2021/07/07.
//

import Foundation

var result : Dictionary = [Int : Int]()
for i in 0 ..< 10 {
    result.updateValue(0, forKey: i)
}

let num1 : Int = Int(readLine()!)!
let num2 : Int = Int(readLine()!)!
let num3 : Int = Int(readLine()!)!

let calc = String(num1 * num2 * num3)

for char in calc {
    switch char {
    case "0":
        result[0]! += 1
        break
    case "1":
        result[1]! += 1
        break
    case "2":
        result[2]! += 1
        break
    case "3":
        result[3]! += 1
        break
    case "4":
        result[4]! += 1
        break
    case "5":
        result[5]! += 1
        break
    case "6":
        result[6]! += 1
        break
    case "7":
        result[7]! += 1
        break
    case "8":
        result[8]! += 1
        break
    case "9":
        result[9]! += 1
        break
    default:
        print("error")
    }
}

for i in 0 ..< result.count {
    print(result[i]!)
}


