//
//  main.swift
//  BOJ#10866
//
//  Created by RooZin on 2021/08/02.
//

import Foundation


func operate(_ cmd : String, _ num : Int) {
    switch cmd {
    
    case "push_back":
        deque.append(num)
        break
    case "push_front":
        var plus : [Int] = []
        plus.append(num)
        plus += deque
        deque = plus
        break
    case "pop_front":
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque[0])
            deque.remove(at: 0)
        }
        break
        
    case "pop_back":
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque.last!)
            deque.remove(at: deque.count-1)
        }
        break
    case "size":
        print(deque.count)
        break
    case "empty":
        if deque.isEmpty {
            print(1)
        }
        else {
            print(0)
        }
        break
    case "front":
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque[0])
        }
        break
    case "back":
        if deque.isEmpty {
            print(-1)
        }
        else {
            print(deque.last!)
        }
        break
    default:
        print("error")
        break
    }
}
let cmdNum = Int(readLine()!)!
var deque : [Int] = []

for _ in 0 ..< cmdNum {
    let input = readLine()!.components(separatedBy: " ").map { $0 }
    
    let cmd = input[0]
    
    if cmd == "push_back" || cmd == "push_front" {
        let num = Int(input[1])!
        operate(cmd, num)
    }
    else {
        operate(cmd, 3)
    }
}


