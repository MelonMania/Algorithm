//
//  main.swift
//  BOJ#10845
//
//  Created by RooZin on 2021/07/22.
//

import Foundation

func queOperate(_ commnad : String, _ num : Int) {
    switch commnad {
    case "push":
        que.append(num)
        break
    case "pop":
        if que.isEmpty {
            print("-1")
        }
        else {
            print(que[0])
            que.remove(at: 0)
        }
        break
    case "size":
        print(que.count)
        break
    case "empty":
        if que.isEmpty {
            print("1")
        }
        else {
            print("0")
        }
        break
    case "front":
        if que.isEmpty {
            print("-1")
        }
        else {
            print(que[0])
        }
        break
    case "back":
        if que.isEmpty {
            print("-1")
        }
        else {
            print(que[que.count - 1])
        }
        break
    default:
        print("error")
    }
}

let testCase = Int(readLine()!)!
var que : [Int] = []

for _ in 0 ..< testCase {
    let input = readLine()!.split(separator: " ").map { $0 }
    let command = input[0]
    
    if command == "push" {
        let num = Int(input[1])!
        queOperate(String(command), num)
    }
    else {
        queOperate(String(command), 0)
    }
}

