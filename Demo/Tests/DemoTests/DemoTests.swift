import XCTest
import Foundation

@testable import Demo

#if os(OSX) || os(iOS)
    import Darwin
#elseif os(Linux)
    import Glibc
#endif

class DemoTests: XCTestCase {

    static var allTests: [(String, (DemoTests) -> () throws -> Void)] {
        return [
            ("testDemoString", testDemoString),
            ("testDemoNum", testDemoNum),
            ("testDemoAdd", testDemoAdd),
            ("testDemoFail", testDemoFail)
        ]
    }

    override func setUp() {
        super.setUp()
    }
    
    func testDemoString() {

        let expectation1 = expectation(description: "Equals String 123")

		let test = "123"
		
		XCTAssert(test == "123")
		
		expectation1.fulfill()
		
		print("Done")

        waitForExpectations(timeout: 10, handler: { _ in  })
    }
    
    func testDemoNum() {

        let expectation1 = expectation(description: "Equals 123")

		let test = 123
		
		XCTAssert(test == 123)
		
		expectation1.fulfill()
		
		print("Done")

        waitForExpectations(timeout: 10, handler: { _ in  })
    }
    
    func testDemoAdd() {

        let expectation1 = expectation(description: "Equals 3")

		let a = 1
		let b = 2
		let c = a + b
		
		XCTAssert(c == 3)
		
		expectation1.fulfill()
		
		print("Done")

        waitForExpectations(timeout: 10, handler: { _ in  })
    }
    
    func testDemoFail() {

        let expectation1 = expectation(description: "Equals hello")

		let test = "hello"
		
		//XCTFail("Oh no I'm failing.")
		XCTAssert(test == "hello")
		
		expectation1.fulfill()
		
		print("Done")

        waitForExpectations(timeout: 10, handler: { _ in  })
    }
}