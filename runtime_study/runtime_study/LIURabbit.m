//
//  LIURabbit.m
//  runtime_study
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "LIURabbit.h"
#import <objc/runtime.h>

@implementation LIURabbit

- (instancetype)init {
    if (self = [super init]) {
        Method eat_shit = class_getInstanceMethod([self class], @selector(eatShit));
        Method sleep = class_getInstanceMethod([self class], @selector(sleep));
        method_exchangeImplementations(eat_shit, sleep);
    }
    return self;
}

- (void)eatShit {
    [self eatShit];
}

@end
