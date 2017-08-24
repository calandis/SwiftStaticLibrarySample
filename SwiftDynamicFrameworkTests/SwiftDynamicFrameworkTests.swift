//
//  SwiftDynamicFrameworkTests.swift
//  SwiftDynamicFrameworkTests
//
//  Created by Chad Landis on 8/15/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

import XCTest
import SwiftDynamicFramework

class SwiftDynamicFrameworkTests: XCTestCase {
    func testDynamicFrameworkCode() {
        let a = SampleSwiftStructFromDynamicLibrary(name: "input for dynamic")
        XCTAssertEqual(a.name, "input for dynamic")
        XCTAssertEqual(a.fooMethod(), "Objective-C code from dynamic library (Swift calling Objective-C)")

        let b = SampleObjcClassFromDynamicLibrary()
        XCTAssertEqual(b.stringMethod2(), "This code came from a dynamic library")

        let c = SampleSwiftClassDefinedInEachLibrary()
        XCTAssertEqual(c.stringMethod(), "SampleSwiftClassDefinedInEachLibrary in Dynamic Library")
    }
}
