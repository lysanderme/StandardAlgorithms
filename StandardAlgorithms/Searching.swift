//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Myrddin-Evans, Lysander (JD) on 25/11/2022.
//

import Foundation

class Searching {
    
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
