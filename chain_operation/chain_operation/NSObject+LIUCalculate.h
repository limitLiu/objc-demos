//
//  NSObject+LIUCalculate.h
//  chain_operation
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LIUCalculator;
@interface NSObject (LIUCalculate)

- (CGFloat)liu_calculate:(void (^)(LIUCalculator *))block;
@end
