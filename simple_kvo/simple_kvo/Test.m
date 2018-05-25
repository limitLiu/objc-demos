//
//  Test.m
//  simple_kvo
//
//  Created by Limit Liu on 2018/5/25.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "Test.h"
#import "LIUPerson.h"
#import "NSObject+LIUKVObserver.h"

@interface Test()
@property (nonatomic, strong) LIUPerson *p;
@end

@implementation Test

- (void)run {
    LIUPerson *person = [[LIUPerson alloc] init];
    self.p = person;
    [person liu_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    person.age ++;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%ld", self.p.age);
}
@end
