//
//  AulaBrunoXcodeTests.swift
//  AulaBrunoXcodeTests
//
//  Created by Wladmir Edmar Silva Junior on 26/02/21.
//

import XCTest
@testable import AulaBrunoXcode

class AulaBrunoXcodeTests: XCTestCase {

    var viewController: ViewController?

    override func setUpWithError() throws {
        viewController = ViewController()
    }

    override func tearDownWithError() throws {
        viewController = nil
    }

    func testExample() throws {
        let viewController = ViewController()
        viewController.addNumber()
        var count = viewController.count        
    }

    func testRemoveNumber() throws {
        viewController?.removeNumber()
        var count = viewController?.count
        XCTAssert(count == 0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
