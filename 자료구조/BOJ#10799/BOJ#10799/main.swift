//
//  main.swift
//  BOJ#10799
//
//  Created by RooZin on 2021/08/24.
//

import Foundation

func solution(_ arrangement:String) -> Int {
    let amap = arrangement.map{$0}
    var answer = 0
    var bararr = [Int]()
    for i in 0..<arrangement.count {
        if amap[i] == "("{
            bararr.append(0)
            continue
        }
        if amap[i-1] == "(" && amap[i] == ")"{
            for j in 0..<bararr.count{
                bararr[j] += 1
            }
        }
        if amap[i-1] == ")" && amap[i] == ")"{
            answer += bararr.last! + 1
        }
        bararr.removeLast()
    }
    return answer
}

let arrangement = readLine()!
print(solution(arrangement))
