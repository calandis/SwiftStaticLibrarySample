//
//  SwiftStaticLibrary.swift
//  SwiftStaticLibrary
//
//  Created by Chad Landis on 8/7/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

import Foundation

public struct SampleSwiftStructFromStaticLibrary {
    public let name: String

    public init(name: String) {
        self.name = name
    }

    public func fooMethod() -> String {
        return SampleObjcClassFromStaticLibrary().stringMethod1()
    }
}

public class SampleSwiftClassFromStaticLibrary: NSObject {
    public let value: String

    public init(value: String) {
        self.value = value
        super.init()
    }
}

public class SampleSwiftClassDefinedInEachLibrary {
    public init() {}

    public func stringMethod() -> String {
        return "SampleSwiftClassDefinedInEachLibrary in Static Library"
    }
}
