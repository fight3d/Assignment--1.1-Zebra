//
//  MyRobotUITests.swift
//  MyRobotUITests
//
//  Created by Ivan Vasilevich on 02.03.2020.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import XCTest

class MyRobotUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
		
		app.buttons["Start"].tap()
		
		let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
		element.tap()
		element.tap()

//		waitForExpectations(timeout: 25) { (error) in
//						let actions775StaticText = app.staticTexts["Actions: 775"]
//						actions775StaticText.tap()
//		}
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
