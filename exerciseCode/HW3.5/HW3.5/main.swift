//
//  main.swift
//  HW3.5
//
//  Created by RooZin on 2021/05/17.
//

import Foundation

func solution(_ arr : [Int]) {
    var dp : [Int] = Array(repeating: 0 ,count: arr.count )
    var result : Int = 0
    
    dp[0] = arr[0]
    
    for i in 1 ... arr.count - 1 {
        print(dp[i-1] * arr[i])
        
        dp[i] = dp[i-1] * arr[i]
        
        print("dp : \(dp)")
    }

    for i in 0 ... dp.count - 1{
        result = max(dp[i], result)
    }
    
    print(result)
}

solution([-6, 12, -7, 0, 14, -7, 5])


