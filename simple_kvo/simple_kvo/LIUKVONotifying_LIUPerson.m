//
//  LIUKVONotifying_LIUPerson.m
//  simple_kvo
//
//  Created by Limit Liu on 2018/5/25.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "LIUKVONotifying_LIUPerson.h"
#import <objc/runtime.h>

@implementation LIUKVONotifying_LIUPerson

- (void)setAge:(NSUInteger)age {
    [super setAge:age];
    id observer = objc_getAssociatedObject(self, @"observer");
    [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
}
@end
