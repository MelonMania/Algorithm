//
//  main.swift
//  HW3.1
//
//  Created by RooZin on 2021/05/16.
//

import Foundation

let num = Int(readLine()!)! // 정수입력

var list = [Int](repeating: 0, count: 100000) // list의 index가 나타내는 것이 num 이고 num의 범위가 1 <= num <= 100000 이므로 이렇게 배열 설정
 
list[1] = 1 // 합이 1일때의 경우의 수
list[2] = 3 // 합이 2일때의 경우의수
list[3] = 4 // 합이 3일때의 경우의 수

if num >= 4 { // num이 4일때 부터 해당 점화식 성립
    for i in 4 ... num {
        list[i] = list[i-3] + list[i-2] + list[i-1] // f(n) = f(n-3) + f(n-2) + f(n-1)
    }
}

print(list[num])
