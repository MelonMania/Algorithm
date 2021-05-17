//
//  main.swift
//  3.2
//
//  Created by RooZin on 2021/05/17.
//

import Foundation

let tileSize = Int(readLine()!)!
let cheeseNumber = Int(readLine()!)!
print("============")

var tile : [[Int]] = Array(repeating: Array(repeating: 0 ,count: tileSize ), count: tileSize)

for _ in 0 ... cheeseNumber - 1 {
    let x = Int(readLine()!)!
    let y = Int(readLine()!)!
    print("--")
    tile[x-1][y-1] = 1
}

var cheeseCnt = 0
var kept : Int = 0

for x in 0 ... tileSize - 1 {
    for y in kept ... tileSize - 1 {
        if tile[x][y] == 1 {
            cheeseCnt += 1
            kept = y
        }
    }
}

print(cheeseCnt)
