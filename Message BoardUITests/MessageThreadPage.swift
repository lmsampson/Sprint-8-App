//
//  MessageThreadPage.swift
//  Message BoardUITests
//
//  Created by Lisa Sampson on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

struct MessageThreadPage: TestPage {
    
    let testCase: XCTestCase
    
    // MARK: - Elements
    
    func threadCell(at index: Int) -> XCUIElement {
        return app.tables.element(boundBy: 0).cells.element(boundBy: index)
    }
    
    var threadTitleTextField: XCUIElement {
        return app.textFields["MessageThreadsTableViewController.TextField"]
    }
    
    // MARK: - Actions
    
    @discardableResult func tapOnCell(at index: Int, file: String = #file, line: UInt = #line) -> MessageThreadPage {
        let cell = threadCell(at: index)
        testCase.expect(exists: cell, file: file, line: line)
        cell.tap()
        return self
    }
    
    @discardableResult func createThread(title: String, file: String = #file, line: UInt = #line) -> MessageThreadPage {
        testCase.expect(exists: threadTitleTextField, file: file, line: line)
        threadTitleTextField.tap()
        threadTitleTextField.typeText(title)
        app.keyboards.buttons["Return"].tap()
        return self
    }
    
    // MARK: - Verifications
    
    
    
}
