//
//  SwiftDynamicLibrary.swift
//  SwiftDynamicFramework
//
//  Created by Chad Landis on 8/15/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

import Foundation

public struct SampleSwiftStructFromDynamicLibrary {
    public let name: String

    public init(name: String) {
        self.name = name
    }

    public func fooMethod() -> String {
        return SampleObjcClassFromDynamicLibrary().stringMethod1()
    }
}

@objc public class SampleSwiftClassFromDynamicLibrary: NSObject {
    @objc public let value: String

    @objc public init(value: String) {
        self.value = value
        super.init()
    }
}

public class SampleSwiftClassDefinedInEachLibrary {
    public init() {}

    public func stringMethod() -> String {
        return "SampleSwiftClassDefinedInEachLibrary in Dynamic Library"
    }
}
