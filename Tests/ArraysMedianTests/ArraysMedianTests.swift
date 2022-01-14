import XCTest
@testable import ArraysMedian

final class ArraysMedianTests: XCTestCase {
    
    
    func testOddSize() {
        XCTAssertEqual(ArraysMedian().findMedianSortedArrays([1,2,3], [2,3]), 2.0)
    }
    func testEvenSize(){
        XCTAssertEqual(ArraysMedian().findMedianSortedArrays([1,2,3], [2,3,4]), 2.5)
    }

    static var allTests = [
        ("testOddSize", testOddSize),
        ("testEvenSize", testEvenSize),
    ]
}
