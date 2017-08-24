//
//  SwiftStaticLibraryTests.swift
//  SwiftStaticLibraryTests
//
//  Created by Chad Landis on 8/7/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

import XCTest
import SwiftStaticLibrary

class SwiftStaticLibraryTests: XCTestCase {
    
    func testStaticLibraryCode() {
        let a = SampleSwiftStructFromStaticLibrary(name: "input for static")
        XCTAssertEqual(a.name, "input for static")
        XCTAssertEqual(a.fooMethod(), "Objective-C code from static library (Swift calling Objective-C)")

        let b = SampleObjcClassFromStaticLibrary()
        XCTAssertEqual(b.stringMethod2(), "This code came from a static library")

        let c = SampleSwiftClassDefinedInEachLibrary()
        XCTAssertEqual(c.stringMethod(), "SampleSwiftClassDefinedInEachLibrary in Static Library")
    }
}
