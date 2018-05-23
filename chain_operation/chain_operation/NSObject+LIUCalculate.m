//
//  NSObject+LIUCalculate.m
//  chain_operation
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "NSObject+LIUCalculate.h"
#import "LIUCalculator.h"

@implementation NSObject (LIUCalculate)

- (CGFloat)liu_calculate:(void (^)(LIUCalculator *))block {
    LIUCalculator *c = LIUCalculator.new;
    block(c);
    return c.result;
}
@end
