//
//  main.swift
//  StandardAlgorithms
//
//  Created by Myrddin-Evans, Lysander (JD) on 05/11/2022.
//

import Foundation

func explainAlgorithms() {
    let algorithms = ["Bubble Sort", "Merge Sort", "Insertion Sort", "Quick Sort", "Linear Search", "Binary Search"]
    for i in 1 ... 6 {
        print("\(i). \(algorithms[i-1])")
    }
    print("\n Which would you like? \n")
    if let answer = readLine() {
        if let answer = Int(answer) {
            switch answer {
            case 1:
                print("The bubble sort is a sorting algorithm that check an item and its neighbour, and swaps them if needed to put the in the correct order. This happens until is passes through the array without swapping anything, meaning that it is sorted.")
                print("Time Complexity: O(n^2) - all cases, Space complexity: O(1)")
            case 2:
                print("The merge sort is a sorting algorithm that divides an array into a series of smaller arrays (until each item is in its own array), and then merges the resultant arrays back together, sorting them during the merging process.")
                print("Time Complexity: O(nlog(n)) - all cases, Space Complexity: O(n)")
            case 3:
                print("The insertion sort is a sorting algorithm that just inserts each item into its correct place in the array immediately, by 'shuffling' through the items until it finds one greater than the current item, where it inserts it just before said item.")
                print("Time Complexity: O(n) - best, O(n^2) - average and worst, Space Complexity: O(1)")
            case 4:
                print("")
                print("Time Coplexity: O(nlog(n)) - best + average, O(n^2) - worst, Space Complexity: ")
            case 5:
                print("The linear search is a search algorithm where it goes through the array, index by index, and check each one against a specified target, and returns true if they are equal, otherwise returning flase (after passing through the whole array)")
                print("Time Complexity: O(1) - best, O(n) - average + worst, Space Complexity: O(1)")
            case 6:
                print("The binary search is a searching algorithm that uses a divide and conquer approach, but it requires a sorted array. It finds the midpoint of the array, and then check if the target is higher/lower than it, and then it checks the relevant half of the array the same way until it find the target, or gets to the end of the array.")
                print("Time Complexity: O(1) - best, O(lon(n)) - average + worst, Space Complexity: O(1)")
            default:
                print("INVALID INPUT")
            }
        }
    }
}
