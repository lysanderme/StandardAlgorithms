//
//  SearchingTest.swift
//  StandardAlgoritmsTest
//
//  Created by Myrddin-Evans, Lysander (JD) on 25/11/2022.
//

import XCTest

class SearchingTest: XCTestCase {

    func testLinearSearchWithSortedArrayReturnsBoolean() {
        //arrange - test setup
        let sortedArray = [1,3,4,10,15]
        let expected = true
        let target = 15
        let searching = Searching()
        //act - perform the action we want to test
        let resultOfTest = searching.linearSearch(data: sortedArray, target: target)
        //assert - check the action behaved how we expected
        XCTAssertEqual(resultOfTest, expected)
    }
    
    func testBinarySearchWithSortedArrayReturnsBoolean() {
        //arrange - test setup
        let sortedArray = [1,3,4,10,15]
        let expected = true
        let target = 15
        let searching = Searching()
        //act - perform the action we want to test
        let resultOfTest = searching.binarySearch(data: sortedArray, target: target)
        //assert - check the action behaved how we expected
        XCTAssertEqual(resultOfTest, expected)
    }

}
