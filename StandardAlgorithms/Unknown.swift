//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Myrddin-Evans, Lysander (JD) on 25/11/2022.
//

import Foundation

class Unknown {
    
    func performSum(data: [Int]) -> Int {
        switch data.count {
            case 0:
                return 0
            case 1:
                let result = data[0] * 2
                return result
            default:
                let result = data[0] + data[data.count - 1]
                return result
        }
    }
    
    func calculateModeSorted(data: [Int]) -> Int {
        var currentCount = 1
        var counter = 0
        var index = 0
        for i in 0 ..< (data.count - 1) {
            if data[i] == data[i+1] {
                currentCount += 1
                if currentCount > counter {
                    counter = currentCount
                    index = i
                    
                }
            } else {
                currentCount = 1
            }
        }
        return data[index]
    }
    
    func getSecondSmallest(data: [Int]) -> Int {
        var currentSmallest = data[0]
        var secondSmallest = Int()
        for i in 0 ..< (data.count - 1) {
            if data[i] < currentSmallest {
                currentSmallest = data[i]
            } else {
                currentSmallest = data[i+1]
            }
        }
        
        for i in 0 ..< (data.count - 1) {
            if data[i] < data[i+1] && data[i] > currentSmallest {
                secondSmallest = data[i]
            } else if data[i] > data[i+1] && data[i] > currentSmallest {
                secondSmallest = data[i+1]
            }
        }
        
        return secondSmallest
    }
}
