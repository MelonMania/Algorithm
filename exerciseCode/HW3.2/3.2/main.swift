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

var tile : [[Int]] = Array(repeating: Array(repeating: 0 ,count: tileSize ), count: tileSize) // 2차원 배열의 타일을 모두 0으로 초기화 후 선언

for _ in 0 ... cheeseNumber - 1 {
    let x = Int(readLine()!)!
    let y = Int(readLine()!)!
    print("--")
    tile[x-1][y-1] = 1 // 치즈가 있는 위치는 1로 표현
}

var cheeseCnt = 0
var kept : Int = 0

for x in 0 ... tileSize - 1 { // 오른쪽, 위쪽으로 밖에 못 움직이기에 한번 치즈를 먹으면 각 인덱스들은 치즈 먹은 인덱스보다 크거나 같아야만한다.
    for y in kept ... tileSize - 1 {  // kept 변수 이용으로 위 조건 만족 시키기
        if tile[x][y] == 1 {
            cheeseCnt += 1
            kept = y
        }
    }
}

print(cheeseCnt)
