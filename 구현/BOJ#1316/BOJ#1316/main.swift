//
//  main.swift
//  BOJ#1316
//
//  Created by RooZin on 2021/07/09.
//

import Foundation

import Foundation

let testCase = Int(readLine()!)!
var cnt = 0

for _ in 0 ..< testCase {
    var check : [Character] = []
    let word = readLine()!

    for char in word {
        if !check.contains(char) {
            check.append(char)
        }
        else if check.last! != char {
            check.removeAll()
            break
        }
    }

    if check.count != 0 { cnt += 1 }

}

print(cnt)
