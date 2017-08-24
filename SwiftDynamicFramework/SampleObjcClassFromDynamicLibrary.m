//
//  SampleObjcClassFromDynamicLibrary.m
//  SwiftDynamicFramework
//
//  Created by Chad Landis on 8/15/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

#import "SampleObjcClassFromDynamicLibrary.h"

#import <SwiftDynamicFramework/SwiftDynamicFramework-Swift.h>

@implementation SampleObjcClassFromDynamicLibrary

- (NSString *)stringMethod1 {
    return @"Objective-C code from dynamic library (Swift calling Objective-C)";
}

- (NSString *)stringMethod2 {
    SampleSwiftClassFromDynamicLibrary* instance = [[SampleSwiftClassFromDynamicLibrary alloc] initWithValue:@"This code came from a dynamic library"];
    return instance.value;
}

@end
