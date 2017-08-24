//
//  ObjcAppCode.m
//  SwiftStaticLibrarySample
//
//  Created by Chad Landis on 8/15/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

#import "ObjcAppCode.h"

// Attempted to import tha application target Swift header (in case that would pull in Swift code
// from dependent static libraries, but that doesn't help.
#import "SwiftStaticLibrarySample-Swift.h"

// Import Dynamic framework, this is totally normal.  We can access both Swift and Objective-C code
// that is exported from the module (all Objective-C code in the module header, and all public Swift)
@import SwiftDynamicFramework;

// Not sure how to import Swift class from Static library into Objective-C code
//@import SwiftStaticLibrary;

// We are able to access Objective-C code defined in the static library by importing their public header
// Ideally, we would instead import the module, but perhaps that doesn't make sense with a static library (does it create a module?)
#import "SwiftStaticLibrary.h"

@implementation ObjcAppCode

+ (void)printStaticFromObjectiveC {
    NSLog(@"BEGIN STATIC");

    // Not sure how to import Swift class from Static library into Objective-C code
//    SampleSwiftClassFromStaticLibrary *a = [[SampleSwiftClassFromStaticLibrary alloc] initWithValue:@"static"];
//    NSLog(@"a.value = %@", a.value);

    SampleObjcClassFromStaticLibrary *b = [[SampleObjcClassFromStaticLibrary alloc] init];
    NSLog(@"b.stringMethod1 = %@, b.stringMethod2 = %@", b.stringMethod1, b.stringMethod2);

    NSLog(@"END STATIC");
}

+ (void)printDynamicFromObjectiveC {
    NSLog(@"BEGIN DYNAMIC");

    SampleSwiftClassFromDynamicLibrary *a = [[SampleSwiftClassFromDynamicLibrary alloc] initWithValue:@"dynamic"];
    NSLog(@"a.value = %@", a.value);

    SampleObjcClassFromDynamicLibrary *b = [[SampleObjcClassFromDynamicLibrary alloc] init];
    NSLog(@"b.stringMethod1 = %@, b.stringMethod2 = %@", b.stringMethod1, b.stringMethod2);

    NSLog(@"END DYNAMIC");
}

@end
