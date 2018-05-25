//
//  main.m
//  simple_kvo
//
//  Created by Limit Liu on 2018/5/25.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Test *t = [[Test alloc] init];
        [t run];
    }
    return 0;
}
