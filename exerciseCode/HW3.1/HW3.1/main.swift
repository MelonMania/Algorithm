//
//  main.swift
//  HW3.1
//
//  Created by RooZin on 2021/05/16.
//

import Foundation

let num = Int(readLine()!)! // 정수입력

var list = [Int](repeating: 0, count: num + 1) // 정수 합의 경우의 수는 list[헤당정수] 이렇게 접근하기에 num + 1 만큼의 배열 생성
 
list[1] = 1 // 합이 1일때의 경우의 수
list[2] = 2 // 합이 2일때의 경우의수
list[3] = 4 // 합이 3일때의 경우의 수

for i in 4 ... num {
    list[i] = list[i-3] + list[i-2] + list[i-1] // f(n) = f(n-3) + f(n-2) + f(n-1)
}

print(list[num])
