//
//  MailComposerTests.swift
//  MailComposerTests
//
//  Created by Ravi Kiran HR on 24/07/20.
//  Copyright © 2020 Philips. All rights reserved.
//

import XCTest
@testable import MailComposer

class MailComposerTests: XCTestCase {
    
    var sut :MailComposer!
    var firstName :String?
    var lastName :String?
    var greetingMsg :String?
    
    override func setUp() {
        sut = MailComposer()
        firstName = nil
        lastName = nil
        greetingMsg = nil
    }
    
    override func tearDown() {
        firstName = nil
        lastName = nil
        greetingMsg = nil
    }
    
    func given(firstName:String?, lastName:String?){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func whenComposeGreetingInvoked(){
        greetingMsg = sut.composeGreeting(firstName, lastName)
    }
    
    func thenExpectedGreetingIs(expectedGreeting:String?){
        XCTAssertEqual(greetingMsg, expectedGreeting)
    }
    
    func testComposeGreetingWhenBothFirstSecondNameNil() {
        given(firstName: nil, lastName: nil)
        whenComposeGreetingInvoked()
        thenExpectedGreetingIs(expectedGreeting: nil)
    }
    
    func testComposeGreetingWhenOnlyFirstNameisGiven(){
        given(firstName: "Ravi", lastName: nil)
        whenComposeGreetingInvoked()
        thenExpectedGreetingIs(expectedGreeting: "Hi Ravi")
    }
    
    func testComposeGreetingWhenOnlyLastNameisGiven(){
        given(firstName: nil, lastName: "Kiran")
        whenComposeGreetingInvoked()
        thenExpectedGreetingIs(expectedGreeting: "Hello, Mr.Kiran")
    }
    
    func testComposeGreetingWhenBothFirstAndLastNamesAreGiven(){
        given(firstName: "Ravi", lastName: "Kiran")
        whenComposeGreetingInvoked()
        thenExpectedGreetingIs(expectedGreeting: "Good to see you! Mr.Ravi Kiran")
    }
    
}
