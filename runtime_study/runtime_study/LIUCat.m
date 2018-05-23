//
//  LIUCat.m
//  runtime_study
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "LIUCat.h"
#import <objc/runtime.h>

@implementation LIUCat

void eat(id self, SEL _cmd, NSString *num) {
    NSLog(@"%@", num);
}

- (void)run {
    NSLog(@"run");
}

- (void)sleep {
    NSLog(@"cat is sleeping...");
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == NSSelectorFromString(@"eat:")) {
        class_addMethod(self, sel, (IMP)eat, "v@:");
    }
    return [super resolveInstanceMethod:sel];
}

@end
