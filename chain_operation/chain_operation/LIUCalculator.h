//
//  LIUCalculator.h
//  chain_operation
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LIUCalculator : NSObject

@property (nonatomic, assign) CGFloat result;

- (LIUCalculator *(^)(CGFloat))plus;
@end
