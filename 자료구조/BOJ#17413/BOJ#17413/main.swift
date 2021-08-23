//
//  main.swift
//  BOJ#17413
//
//  Created by RooZin on 2021/08/03.
//

import Foundation

let input = readLine()!
var check = 0
var tag : Bool = true
var cnt = 0

for char in input {
    if char == "<" || char == ">" {
        check = 1
    }
}


if check == 0 {
    let set = input.components(separatedBy: " ").map{ $0 }
    
    for word in set {
        for char in word.reversed() {
            print(char, terminator: "")
        }
        print("",terminator: " ")
    }
}

else {
    var full : String = ""
    for char in input {
        if char == "<" {
            tag = true
        }
        else if char == ">" {
            tag = false
        }
        
        if full.isEmpty == false {
            let input = full.components(separatedBy: " ").map{ $0 }
            
            if input.count > 1 {
                for word in input {
                    for char in word.reversed() {
                        print(char, terminator: "")
                    }
                    cnt += 1
                    if input.count > cnt {
                        print("",terminator: " ")
                    }
                }
                cnt = 0
            }
           
            else {
                for char in full.reversed() {
                    print(char, terminator: "")
                }
            }
            full = ""
        }
        
        if tag == true {
            print(char, terminator: "")
        }
        else if tag == false {
            if char != ">" {
                full += String(char)
            }
            else {
                print(char, terminator: "")
            }
        }
    }
    print("")
}


