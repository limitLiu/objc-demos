//
//  NSObject+LIUKVObserver.m
//  simple_kvo
//
//  Created by Limit Liu on 2018/5/25.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import "NSObject+LIUKVObserver.h"
#import <objc/runtime.h>
#import "LIUKVONotifying_LIUPerson.h"

#define LIU_PROPERTY_NAME_KEY
#define LIU_PROPERTY_NAME_VALUE
#define LIU_OBJC_RETAIN_TYPE


@implementation NSObject (LIUKVObserver)

- (void)liu_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
    // change current obj isa pointer
    object_setClass(self, LIUKVONotifying_LIUPerson.class);
    // add property for category
    objc_setAssociatedObject(self,
                             LIU_PROPERTY_NAME_KEY @"observer",
                             LIU_PROPERTY_NAME_VALUE observer,
                             LIU_OBJC_RETAIN_TYPE OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
