//
//  LIUCalculator.m
//  chain_operation
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "LIUCalculator.h"

@implementation LIUCalculator

- (LIUCalculator *(^)(CGFloat))plus {
    return ^LIUCalculator *(CGFloat value) {
        self.result += value;
        return self;
    };
}
@end
