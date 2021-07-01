//
//  main.swift
//  BOJ#10828
//
//  Created by RooZin on 2021/06/30.
//

import Foundation

func selectCommand(_ command : String, _ num : Int) {
    switch command {
    case "push" :
        stack.append(num)
        break
    case "pop" :
        if stack.count != 0 {
            print(stack.last!)
            stack.removeLast()
        }
        else {
            print(-1)
        }
        break
        
    case "size" :
        print(stack.count)
        break
        
    case "empty" :
        if stack.isEmpty {
            print(1)
        }
        else {
            print(0)
        }
        break
        
    case "top" :
        if stack.count != 0 {
            print(stack.last!)
        }
        else {
            print(-1)
        }
        break
        
    default:
        print("error")
    }
}

let commandNum = Int(readLine()!)!
var stack : [Int] = []

for _ in 0 ..< commandNum {
    let input = readLine()!.split(separator: " ").map { $0 }
    let command = input[0]
    
    if command == "push" {
        let num = Int(input[1])!
        selectCommand(String(command), num)
    }
    else {
        selectCommand(String(command), 0)
    }
    
}


