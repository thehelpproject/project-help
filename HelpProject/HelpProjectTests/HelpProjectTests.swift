//
//  HelpProjectTests.swift
//  HelpProjectTests
//
//  Created by Rahul Pahuja on 22/07/24.
//
import SwiftUI
import XCTest
//import ViewInspector //
@testable import HelpProject

//extension ContentView:Inspectable{}


final class HelpProjectTests: XCTestCase {

    func testResponseSuccess(){
        
        //Given(Arrange)
        let expectedResponse = 1
        
        //When(Act)
        let cal = Calculator()
        let actualResponse = cal.getResponse()
        
        //Then(Assert)
        XCTAssertEqual(expectedResponse,actualResponse)
    }


    
    func testResponseFailure(){
        
        //Given(Arrange)
        let expectedResponse = -11
        
        //When(Act)
        let cal = Calculator()
        let actualResponse = cal.getResponse()
        
        //Then(Assert)
        XCTAssertNotEqual(expectedResponse,actualResponse)
        
       
    }
    //https://medium.com/appledeveloperacademy-ufpe/how-to-implement-ui-tests-with-swiftui-a-few-examples-636708ee26ad
    
//    override func setUpWithError() throws {
//          // Set up the initial state required for the tests.
//          continueAfterFailure = false
//          XCUIApplication().launch()
//      }
    
//    func testButtonExistsCheck() throws{
//        let app = XCUIApplication()
//        app.launch()
//        
//        //let button = app.buttons["Submit"]
//        //XCTAssertTrue(button.exists)
//    }
    
    
}
