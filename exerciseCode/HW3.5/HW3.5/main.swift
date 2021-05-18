//
//  main.swift
//  HW3.5
//
//  Created by RooZin on 2021/05/17.
//

import Foundation

func solution(_ arr : [Int]) {
    var dp : [Int] = Array(repeating: 0 ,count: arr.count ) // 곱들을 저장해주는 배열
    var result : Int = 0
    
    dp[0] = arr[0]
    
    for i in 1 ... arr.count - 1 { // dp에 연속된 숫자들의 누적 곱들을 저장
        dp[i] = dp[i-1] * arr[i]
    }

    for i in 0 ... dp.count - 1 { // dp에 저장된 값들중 가장 큰 값 추출
        result = max(dp[i], result)
    }
    
    print(result)
}

solution([-6, 12, -7, 0, 14, -7, 5])


