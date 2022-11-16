//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Myrddin-Evans, Lysander (JD) on 09/11/2022.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var result = data
        var swaps = 10
        while swaps != 0 {
            swaps = 0
            for i in 0 ..< (result.count - 1) {
                if result[i] > result[i+1] {
                    let alt = result[i]
                    result[i] = result[i+1]
                    result[i+1] = alt
                    swaps += 1
                }
            }
        }
        return result
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        var result = data
        if result.count > 1 {
            let mid: Int = result.count / 2
            var left = Array(result[0 ..< mid])
            var right = Array(result[mid ..< result.count])
            
            left = mergeSort(left)
            right = mergeSort(right)
            
            i = 0
            j = 0
            k = 0
            
            while i < left.count && j < right.count {
                if left[i] <= right[i] {
                    result[k] = left[i]
                    i += 1
                } else {
                    result[k] = right[j]
                    j += 1
                }
                k += 1
            }
            
            while i < left.count {
                result[k] = left[i]
                i += 1
                k += 1
            }
            
            while j < right.count {
                result[k] = right[j]
                j += 1
                k += 1
        }
            return result
    }
        
    func insertionSort(data: [Int]) -> [Int] {
        var result = data
        for i in 1 ..< result.count {
            let current = result[i]
            var j = i - 1
            while j >= 0 && result[j] > current {
                result[j+1] = result[j]
                j -= 1
            }
            result[j+1] = current
        }
    }
    
    func linearSearch(data: [Int], target: Int) -> Bool {
        for item in data {
            if item == target {
                return true
            }
        }
        return false
    }
    
    func binarySearch(data: [Int], target: Int) -> Bool {
    var high = data.count
    var low = 0
    var mid = Int()
    repeat {
        mid = (high + low) / 2
        if target == data[mid] {
            return true
        } else if target < data[mid] {
            high = mid
        } else {
            low = mid
        }
    } while high > low
    return false
    }

}
