//
//  SortingTest.swift
//  StandardAlgoritmsTest
//
//  Created by Myrddin-Evans, Lysander (JD) on 09/11/2022.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange - test setup
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act - perform the action we want to test
        let sortedArray = sorting.bubbleSort(data: unsortedArray)
        //assert - check the action behaved how we expected
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testMergeSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange - test setup
        let unsortedArray = [3, 1, 10, 15, 4]
        let expected = [1, 3, 4, 10, 15]
        let sorting = Sorting()
        //act - perform the action we want to test
        let sortedArray = sorting.mergeSort(data: unsortedArray)
        //assert - check the action behaved how we expected
        XCTAssertEqual(sortedArray, expected)
    }

}
