//
//  main.swift
//  BOJ#9093
//
//  Created by RooZin on 2021/06/30.
//

import Foundation

func reverseSentence(_ sentence : String) -> String {
    let sliceArr = sentence.split(separator: " ").map { $0 }
    var updatedSen : String = ""
    for slice in sliceArr {
        updatedSen += slice.reversed()
        updatedSen += " "
    }
    
    return updatedSen
}

let testCase = Int(readLine()!)!

var sentenceList : [String] = []

for _ in 0 ..< testCase {
    let sentence = readLine()!
    sentenceList.append(sentence)
}

for i in 0 ..< sentenceList.count {
    let updatedSen = reverseSentence(sentenceList[i])
    print(updatedSen)
}





