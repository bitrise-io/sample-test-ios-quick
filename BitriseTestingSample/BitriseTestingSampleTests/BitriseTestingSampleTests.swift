//
//  BitriseTestingSampleTests.swift
//  BitriseTestingSampleTests
//
//  Created by Viktor Benei on 6/17/15.
//  Copyright (c) 2015 Bitrise. All rights reserved.
//

import Quick
import Nimble

class BitriseTestingSampleTests: QuickSpec {
    var viewController: ViewController!    
    override func spec() {

        beforeEach {
            self.viewController = ViewController()
        }
        
        describe(".viewDidLoad()") {
            beforeEach {
                let _ =  self.viewController.view
            }
        }
        
        describe(".viewWillDisappear()") {
            beforeEach {
                self.viewController.viewWillDisappear(false)
            }
        }
    
        describe("The testButton") {
            it("increase the variable value") {
                let variable = self.viewController.variable
                let label = self.viewController.testButton
                self.viewController.testButtonTouched(self)
                expect(variable).to(beLessThan(self.viewController.variable))
            }
        }
    }
}
