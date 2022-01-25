//
//  brightcosmeticsUITests.swift
//  brightcosmeticsUITests
//
//  Created by George FitzGibbons on 6/12/18.
//  Copyright © 2018 George FitzGibbons. All rights reserved.
//

import XCTest

class brightcosmeticsUITests: XCTestCase {
    
    func testEcomApp() {
    let app = XCUIApplication()
        app.launch()
    
       let browseCatalogButton =  app.buttons["Browse Catalog"]
        _=browseCatalogButton.waitForExistence(timeout: 20)
        browseCatalogButton.tap()
        
        let viewAllButton = app.buttons["View All"].firstMatch
        _=viewAllButton.waitForExistence(timeout: 20)
        viewAllButton.tap()
        
        
        let itemButton = app.collectionViews.cells.otherElements.containing(.staticText,
                                                           identifier: "Oil-Free Moisturiser").children(matching: .other).element.firstMatch
        _=itemButton.waitForExistence(timeout: 20)
        itemButton.tap()
        
        let addToBagButton = app.buttons["ADD TO BAG"]
        _=addToBagButton.waitForExistence(timeout: 20)
        addToBagButton.tap()
        
        let checkoutButton = app.buttons["Checkout"]
        _=checkoutButton.waitForExistence(timeout: 20)
        checkoutButton.tap()
        
        let continueToPaymentButton = app.buttons["Continue to Payment"]
        _=continueToPaymentButton.waitForExistence(timeout: 20)
        continueToPaymentButton.tap()
        
        let applePayButton = app.buttons["512px Apple Pay logo"]
        _=applePayButton.waitForExistence(timeout: 20)
        applePayButton.tap()
        
        let orderConfirmation = app.buttons["Order Confirmation"]
        _=orderConfirmation.waitForExistence(timeout: 20)
        orderConfirmation.tap()
    }
}
