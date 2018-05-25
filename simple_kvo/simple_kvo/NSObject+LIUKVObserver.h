//
//  NSObject+LIUKVObserver.h
//  simple_kvo
//
//  Created by Limit Liu on 2018/5/25.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LIUKVObserver)

- (void)liu_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
@end
