import UIKit


func solution(_ numbers:String) -> Int {
    
    let number = numbers.map{String($0)}
    var stack : [String] = number
    var rest : [String] = []
    var count : Int = 0
    
    for i in 0 ... number.count - 1 {
        for j in 0 ... number.count - 1 {
            if i != j {
                let num = number[i] + number[j]
                stack.append(num)
            }
        }
    }
    
    for i in 0 ... stack.count - 1 {
        
        let num = Int(stack[i]) ?? 0
        if num <= 1 {
            rest.append(stack[i])
        }
        else {
            for j in 1 ... num {
                if num % j == 0 {
                    count += 1
                }
            }
            if count > 3 {
                rest.append(stack[i])
            }
            count = 0
        }
        
    }
    stack = stack.filter{!rest.contains($0)}
    
    return Set(stack).count
}

print(solution("17"))



