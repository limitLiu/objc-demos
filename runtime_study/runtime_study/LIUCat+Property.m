//
//  LIUCat+Property.m
//  runtime_study
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "LIUCat+Property.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation LIUCat (Property)

static const char *key = "age";

- (void)setAge:(NSUInteger)age {
    objc_setAssociatedObject(self, key, @(age), OBJC_ASSOCIATION_ASSIGN);
}

- (NSUInteger)age {
    return [objc_getAssociatedObject(self, key) intValue];
}
@end
