//
//  main.swift
//  HW3.4
//
//  Created by RooZin on 2021/05/17.
//

import Foundation

func solution(_ arr : [Int]) {
    var dp : [Int] = Array(repeating: 0 ,count: arr.count ) // 합들을 저장해주는 배열
    var result : Int = 0
    
    dp[0] = arr[0]
    
    for i in 1 ... arr.count - 1 {
        if dp[i-1] + arr[i] > arr[i] { // 
            dp[i] = dp[i-1] + arr[i]
        }
        else {
            dp[i] = arr[i]
        }
    }
    print(dp)
    
    for i in 0 ... dp.count - 1{
        result = max(dp[i], result)
    }
    
    print(result)
}

solution([31, -41, 59, 26, -53, 58, 97, -93, -23, 84])
