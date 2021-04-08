import UIKit


func findMinimum(list : [Int], length : Int) -> Int{
    let minimum : Int
    
    if length == 0 {
        minimum = list[0]
        return minimum
    }
    else {
        minimum = findMinimum(list: list , length: length - 1)

        if minimum > list[length] {
            return list[length]
        }
        else{
            return minimum
        }
    }
}

func findSumValue(list : [Int], length : Int ) -> Int {
    var sum : Int
    
    if length == 0 {
        sum = list[0]
        return sum
    }
    else{
        sum = list[length] + findSumValue(list: list, length: length - 1)
        return sum
    }
    
}


func minIndex(list : [Int], i : Int , j : Int) -> Int {
    let min : Int
    
    if i == j {
        min = i
        return min
    }
    else{
        min = minIndex(list: list, i: i+1, j: j)
        return list[i] < list[min] ? i : min
    }
    
}

func selectionSort(list : [Int], index : Int = 0 , length : Int ) {
    
    if index == length {
        return
    }
    
    let k = minIndex(list: selectionlist, i: index, j: length - 1)
  
    
    if k  != index {
        selectionlist.swapAt(k, index)
    }
    
    selectionSort(list: selectionlist, index: index + 1, length: length)
    
}


let list : [Int] = [5, 2, 6, 1, 23, 8]

var selectionlist = list
selectionSort(list: selectionlist, index: 0, length: list.capacity)

let value = findMinimum(list: list, length: list.capacity-1)
let sum = findSumValue(list: list, length: list.capacity-1)

print(selectionlist)
print("sum : \(sum)")
print("min : \(value)")


