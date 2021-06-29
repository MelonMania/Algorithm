import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result : String = ""
    var left : Int = 0
    var right : Int = 0
    
    for i in 0 ... numbers.capacity - 1 {
        switch numbers[i] {
        case 1, 4, 7:
            result += "L"
            left = numbers[i]
        case 3, 6, 9 :
            result += "R"
            right = numbers[i]
        default:
            if abs(left - numbers[i]) == abs(right - numbers[i]) || abs(abs(left - numbers[i]) - abs(right - numbers[i])) % 2 == 0  {
                switch hand {
                    case "left":
                        left = numbers[i]
                        result += "L"
                    default:
                        right = numbers[i]
                        result += "R"
                }
            }
            
            else if abs(left - numbers[i]) > abs(right - numbers[i]) {
                if abs(abs(left - numbers[i]) - abs(right - numbers[i])) == 1 {
                    if left - numbers[i] == 3 {
                        result += "L"
                        left = numbers[i]
                    }
                    else if right - numbers[i] == 3 {
                        result += "R"
                        right = numbers[i]
                    }
                }
                else {
                    result += "R"
                    right = numbers[i]
                }
            }
            else if abs(left - numbers[i]) < abs(right - numbers[i]) {
                if abs(abs(left - numbers[i]) - abs(right - numbers[i])) == 1 {
                    if left - numbers[i] == 3 {
                        result += "L"
                        left = numbers[i]
                    }
                    else if right - numbers[i] == 3 {
                        result += "R"
                        right = numbers[i]
                    }
                }
                else {
                    result += "L"
                    left = numbers[i]
                }
            }
        }
        print("left : \(left) , right : \(right) => \(result)")
    }
    
    return result
}

print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right"))


