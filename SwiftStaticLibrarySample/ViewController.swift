//
//  ViewController.swift
//  SwiftStaticLibrarySample
//
//  Created by Chad Landis on 8/7/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

import UIKit

// Import Dynamic framework, this is totally normal.  We can access both Swift and Objective-C code
// that is exported from the module (all Objective-C code in the module header, and all public Swift)
import SwiftDynamicFramework

// Import Static library, this is totally normal.  We can access both Swift and Objective-C code
// that is exported from the module (all Objective-C code in the module header, and all public Swift)
// However, this import statement generates the following warning:
// "Implicit import of bridging header 'SwiftStaticLibrary.h' via module 'SwiftStaticLibrary' is deprecated and will be removed in a later version of Swift"`"
// I am using SwiftStaticLibrary.h as a sort of umbrella/module header for the entire library.
// All Objective-C headers will reside in here.  This is also used inside the target as a bridging
// header to expose Objective-C code to Swift (the same technique is used for dynamic frameworks).
// I'm not sure if this warning is spurious (https://bugs.swift.org/browse/SR-3801), or I am doing something wrong here.
// I don't get the same warning when I import the library into the test target.
import SwiftStaticLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        printStaticFromSwift()
        printDynamicFromSwift()

        ObjcAppCode.printStaticFromObjectiveC()
        ObjcAppCode.printDynamicFromObjectiveC()
    }

    func printStaticFromSwift() {
        print("BEGIN STATIC")

        let a = SampleSwiftStructFromStaticLibrary(name: "static")
        print("a.fooMethod() = \(a.fooMethod())")
        print("a.name = \(a.name)")

        let b = SampleObjcClassFromStaticLibrary()
        print("b.stringMethod1() = \(b.stringMethod1())")
        print("b.stringMethod2() = \(b.stringMethod2())")

        let c = SwiftStaticLibrary.SampleSwiftClassDefinedInEachLibrary()
        print("c.stringMethod() = \(c.stringMethod())")

        print("END STATIC")
    }

    func printDynamicFromSwift() {
        print("BEGIN DYNAMIC")

        let a = SampleSwiftStructFromDynamicLibrary(name: "dynamic")
        print("a.fooMethod() = \(a.fooMethod())")
        print("a.name = \(a.name)")

        let b = SampleObjcClassFromDynamicLibrary()
        print("b.stringMethod1() = \(b.stringMethod1())")
        print("b.stringMethod2() = \(b.stringMethod2())")

        let c = SwiftDynamicFramework.SampleSwiftClassDefinedInEachLibrary()
        print("c.stringMethod = \(c.stringMethod())")

        print("END DYNAMIC")
    }
}
