//
//  UnknownTest.swift
//  StandardAlgoritmsTest
//
//  Created by Myrddin-Evans, Lysander (JD) on 25/11/2022.
//

import XCTest

class UnknownTest: XCTestCase {

    func testSumOfFirstAndLastItemsOfIntegerArrayIsCorrect() {
        //arrange - test setup
        let exampleArrayLong = [3,1,10,15,4]
        let expectedLong = 7
        let exampleArrayShort = [2]
        let expectedShort = 4
        let exampleArrayEmpty = [Int]()
        let expectedEmpty = 0
        let unknown = Unknown()
        //act - perform the action we want to test
        let resultantSumLong = unknown.performSum(data: exampleArrayLong)
        let resultantSumShort = unknown.performSum(data: exampleArrayShort)
        let resultantSumEmpty = unknown.performSum(data: exampleArrayEmpty)
        //assert - check the action behaved how we expected
        XCTAssertEqual(resultantSumLong, expectedLong)
        XCTAssertEqual(resultantSumShort, expectedShort)
        XCTAssertEqual(resultantSumEmpty, expectedEmpty)
    }
    
    func testCalculationOfModeForIntegerArrayIsCorrect() {
        //arrange - test setup
        let exampleArray = [1,3,3,4,6,8,8,8,9]
        let expected = 8
        let unknown = Unknown()
        //act - perform the action we want to test
        let resultantSum = unknown.calculateModeSorted(data: exampleArray)
        //assert - check the action behaved how we expected
        XCTAssertEqual(resultantSum, expected)
    }
    
    func testSecondSmallestItemInArrayIsCorrect() {
        //arrange - test setup
        let exampleArray = [3,1,10,15,4]
        let expected = 3
        let unknown = Unknown()
        //act - perform the action we want to test
        let resultantItem = unknown.getSecondSmallest(data: exampleArray)
        //assert - check the action behaved how we expected
        XCTAssertEqual(resultantItem, expected)
    }
    
}
