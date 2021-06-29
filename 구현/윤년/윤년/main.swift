//
//  main.swift
//  윤년
//
//  Created by RooZin on 2021/06/29.
//

import Foundation

var year = Int(readLine()!)!

var result = 0

if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
    result = 1
}

print(result)

