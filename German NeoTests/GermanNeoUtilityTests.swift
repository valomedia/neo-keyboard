//
//  GermanNeoUtilityTests.swift
//  German NeoTests
//

import XCTest

final class GermanNeoUtilityTests: XCTestCase {

    func testThenReturnsValueOnlyWhenConditionIsTrue() {
        XCTAssertEqual(true.then("neo"), "neo")
        XCTAssertNil(false.then("neo"))
    }

    func testThenPreservesOptionalValues() {
        let value: String? = "neo"
        let missingValue: String? = nil

        XCTAssertEqual(true.then(value), "neo")
        XCTAssertNil(false.then(value) as String?)
        XCTAssertNil(true.then(missingValue))
    }

    func testElseReturnsValueOnlyWhenConditionIsFalse() {
        XCTAssertNil(true.`else`("neo"))
        XCTAssertEqual(false.`else`("neo"), "neo")
    }

    func testThenOperatorMatchesThenMethod() {
        XCTAssertEqual(true .!! "neo", "neo")
        XCTAssertNil(false .!! "neo")
    }

    func testCompactedRemovesNilValuesAndPreservesOrder() {
        let values: [String?] = ["x", nil, "v", nil, "l"]

        XCTAssertEqual(values.compacted(), ["x", "v", "l"])
    }

}
