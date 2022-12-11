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
        return result
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        var result = data
        if result.count > 1 {
            let mid: Int = result.count / 2
            var left = Array(result[0 ..< mid])
            var right = Array(result[mid ..< data.count])

            left = mergeSort(data: left)
            right = mergeSort(data: right)

            var leftCounter = 0
            var rightCounter = 0
            var resultCounter = 0

            while leftCounter < left.count && rightCounter < right.count {
                if left[leftCounter] <= right[rightCounter] {
                    result[resultCounter] = left[leftCounter]
                    leftCounter += 1
                } else {
                    result[resultCounter] = right[rightCounter]
                    rightCounter += 1
                }
                resultCounter += 1
            }

            while leftCounter < left.count {
                result[resultCounter] = left[leftCounter]
                leftCounter += 1
                resultCounter += 1
            }

            while rightCounter < right.count {
                result[resultCounter] = right[rightCounter]
                rightCounter += 1
                resultCounter += 1
            }
        }
        return result
    }
    
    func quickSort(_ array: [Int]) -> [Int] {
        let data = array

        if data.count <= 1 {
            return data
        }

        var pivot = 0

        if data.count > 3 {
            let midpoint: Int = data[data.count / 2]
            let last = data[data.count - 1]

            if (midpoint <= data[0] && midpoint >= last) || (midpoint >= data[0] && midpoint <= last){
                pivot = data.count / 2
            } else if (last >= data[0] && last <= midpoint) || (last <= data[0] && last >= midpoint) {
                pivot = data.count - 1
            }
        }

        var smallerArray = [Int]()
        var largerArray = [Int]()
        var pivotValueCount = 0

        for i in 0..<data.count {
            if data[i] < data[pivot] {
                smallerArray.append(data[i])
            } else if data[i] > data[pivot] {
                largerArray.append(data[i])
            } else if data[i] == data[pivot] {
                pivotValueCount += 1
                if pivotValueCount > 1 {
                    largerArray.append(data[i])
                }
            }
        }

        var result: [Int] = quickSort(smallerArray)
        result.append(data[pivot])
        for item in quickSort(largerArray){
            result.append(item)
        }
        return result
    }
    
}
