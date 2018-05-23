//
//  main.m
//  chain_operation
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LIUCalculator.h"
#import "NSObject+LIUCalculate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CGFloat res = [LIUCalculator liu_calculate:^(LIUCalculator *c) {
            c.plus(10).plus(2);
        }];
        NSLog(@"%.2f", res);
    }
    return 0;
}
