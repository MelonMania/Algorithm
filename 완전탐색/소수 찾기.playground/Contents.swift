import UIKit

func recurlsive(_ stack : [String], _ subset : [String], _ index : Int ) -> [String] {
    var subsetReal = subset
    
    if index == stack.count - 1 {
        return stack
    }
    else {
        subsetReal.append(stack[index])
        
        recurlsive(stack, subsetReal, index + 1)
        
        subsetReal.removeLast()
        recurlsive(stack, subsetReal, index + 1)
        
    }
    
    return subsetReal
}

//func solution(_ numbers:String) -> Int {
//
//    let number = numbers.map{String($0)}
//    var stack : [String] = number
//    let subset : [String] = []
//    var rest : [String] = []
//    var count : Int = 0
//
//    print(recurlsive(stack, subset, 0))
//
//    for i in 0 ... number.count - 1 {
//        for j in 0 ... number.count - 1 {
//            if i != j {
//                let num = number[i] + number[j]
//                stack.append(num)
//            }
//        }
//    }
//
//    for i in 0 ... stack.count - 1 {
//
//        let num = Int(stack[i]) ?? 0
//        if num <= 1 {
//            rest.append(stack[i])
//        }
//        else {
//            for j in 1 ... num {
//                if num % j == 0 {
//                    count += 1
//                }
//            }
//            if count > 2 {
//                rest.append(stack[i])
//            }
//            count = 0
//        }
//    }
//    stack = stack.filter{!rest.contains($0)}
//    return Set(stack).count
//}

func solution(_ numbers: String) -> Int {
    let combinations = comb(digit: numbers.count, numbers: numbers.seperate()).compactMap {
        return Int($0)
    }
    let answer = primeCount(Set(combinations))
    return answer
}

func comb(digit: Int, numbers: [String]) -> Set<String> {
    if digit == 1 { return Set(numbers) }
    if digit < 1 { return [] }
    
    var answer: Set<String> = []
    for i in 0..<numbers.count {
        let num = numbers[i]
        var subNumbers: [String] = numbers
        subNumbers.remove(at: i)
        
        let subComb = comb(digit: digit-1, numbers: subNumbers)
        let subArray = subComb.compactMap{ num + $0 }
        answer = answer.union(subComb)
        answer = answer.union(Set(subArray))
    }
    
    return answer
}

func primeCount(_ numbers: Set<Int>) -> Int {
    var primes = [Int]()
    var count = 0
    
    // 가장 큰 수의 제곱근까지 모든 소수를 구한다.
    let max = numbers.max() ?? 0
    for i in 2...max.sqrtUp() {
        var isPrime = true
        for prime in primes {
            if i % prime == 0 {
                isPrime = false
                break
            }
        }
        if !isPrime { continue }
        primes.append(i)
    }
    
    // num의 제곱근 보다 작은 모든 소수로 나누어 떨어지지 않는 수는 소수이다.
    for num in numbers {
        if num < 2 {continue}
        var isPrime = true
        for prime in primes {
            if num.sqrtUp() > prime && num % prime == 0 {
                isPrime = false
                break
            }
        }
        if isPrime { count += 1 }
    }
    
    return count
}

extension String {
    func seperate() -> [String] {
        let array = self.compactMap{ String($0) }
        return array
    }
}

extension Int {
    func sqrtUp() -> Int {
        let root = sqrt(Double(self))
        return Int(root)+1
    }
}
print(solution("011"))



