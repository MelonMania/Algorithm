//
//  main.swift
//  BOJ#1406
//
//  Created by RooZin on 2021/07/14.
//

import Foundation

var str = readLine()!
let functionNum = Int(readLine()!)!
var cursor : Int = str.count

for _ in 0 ..< functionNum {
    let cmd = readLine()!
    
    switch cmd {
    case "L":
        if cursor != 0 {
            cursor -= 1
        }
        break
    case "D":
        if cursor != str.count {
            cursor += 1
        }
        break
    case "B":
        if cursor != 0 {
            str.remove(at: str.index(str.startIndex, offsetBy: cursor - 1))
            cursor -= 1
        }
        break
    default:
        let word = cmd.last!
        if str.count == cursor {
            str.append(word)
        }
        else {
            str.insert(word , at: str.index(str.startIndex, offsetBy: cursor))
        }
        cursor += 1
        break
    }
}

print(str)

