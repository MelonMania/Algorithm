//
//  main.swift
//  셀프 넘버
//
//  Created by RooZin on 2021/06/29.
//

import Foundation

var selfNum : [Int] = []
var num = 1

for i in 0 ..< 9999 {
    selfNum.append(i+1)
}

while num < 10000 {
    for number in selfNum {
        num = number
        if num < 10 {
            num = num + num
            if selfNum.contains(num) {
                selfNum[num - 1] = 0
            }
        }
        else if num < 100 {
            num = num + (num / 10) + (num % 10)
            if selfNum.contains(num) {
                selfNum[num - 1] = 0
            }
        }
        else if num < 1000 {
            num = num + (num / 100) + (num % 100) / 10 + (num % 100) % 10
            if selfNum.contains(num) {
                selfNum[num - 1] = 0
            }
        }
        else {
            num = num + (num / 1000) + (num % 1000) / 100 + (num % 1000) % 100 / 10 + (num % 1000) % 100 % 10
            if selfNum.contains(num) {
                selfNum[num - 1] = 0
            }
        }
    }
}

for number in selfNum {
    if number != 0 {
        print(number)
    }
}
