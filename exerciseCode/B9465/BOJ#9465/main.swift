//
//  main.swift
//  B9465
//
//  Created by RooZin on 2021/05/18.
//

import Foundation

let testCase = Int(readLine()!)!

var list : [Int] = []
var dp = [[Int]]()
var stickerSet : [[Int]] = []
var maxOfSum : [Int] = []

for _ in 0 ... testCase - 1 {
    let row = Int(readLine()!)!
    

    for _ in 0 ... 1 {
        stickerSet.append( readLine()!.split(separator : " " ).map{Int(String($0))!})
    }
   
    dp = stickerSet
    
    dp[0][1] += dp[1][0]
    dp[1][1] += dp[0][0]
    
    for i in 2 ... row - 1 {
        dp[0][i] += max(dp[1][i-1], dp[1][i-2])
        dp[1][i] += max(dp[0][i-1], dp[0][i-2])
    }
    
    maxOfSum.append(max(dp[0][row-1], dp[1][row-1]))
    
    stickerSet.removeAll()
    dp.removeAll()
}

for i in 0 ... maxOfSum.count - 1 {
    print(maxOfSum[i])
}
