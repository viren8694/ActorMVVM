//
//  Actors_MVVMTests.swift
//  Actors_MVVMTests
//
//  Created by Viren Patel on 3/28/18.
//  Copyright © 2018 Viren Patel. All rights reserved.
//

import XCTest
@testable import Actors_MVVM

class Actors_MVVMTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testApicall()
    {
       let apiCallExpectation = expectation(description: "Testing Actor Api")
       let api = APIClient()
        api.fetchActorList { (actors, error) in
            if let _ = actors
            {
                apiCallExpectation.fulfill()
            }
            else
            {
                XCTFail()
            }
        }
        waitForExpectations(timeout: 5.0)
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
