import UIKit

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var stack : [Int] = []
    var stackReturn : [Int] = []
    
    for i in 0 ... commands.count - 1 {
        for j in commands[i][0] - 1 ... commands[i][1] - 1{
            stack.append(array[j])
        }
        stack.sort()
        print(stack)
        stackReturn.append(stack[commands[i][2] - 1])
        stack = []
    }
    
    return stackReturn
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
