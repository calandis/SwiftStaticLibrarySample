//
//  SampleObjcClassFromStaticLibrary.m
//  SwiftStaticLibrary
//
//  Created by Chad Landis on 8/15/17.
//  Copyright © 2017 Chad Landis. All rights reserved.
//

#import "SampleObjcClassFromStaticLibrary.h"
#import "SwiftStaticLibrary-Swift.h"

@implementation SampleObjcClassFromStaticLibrary

- (NSString *)stringMethod1 {
    return @"Objective-C code from static library (Swift calling Objective-C)";
}

- (NSString *)stringMethod2 {
    SampleSwiftClassFromStaticLibrary *instance = [[SampleSwiftClassFromStaticLibrary alloc] initWithValue:@"This code came from a static library"];
    return instance.value;
}

@end
