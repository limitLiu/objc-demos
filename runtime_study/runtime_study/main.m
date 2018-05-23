//
//  main.m
//  runtime_study
//
//  Created by Limit Liu on 2018/5/23.
//  Copyright © 2018年 Limit Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

#import "LIUCat.h"
#import "LIUCat+Property.h"

#import "LIURabbit.h"

id liu_new(char *cls) {
    return objc_msgSend(objc_getClass(cls), sel_registerName("new"));
}
void liu_msg_send() {
    LIUCat *cat = liu_new("LIUCat");
    objc_msgSend(cat, @selector(run));
}

void liu_change_method() {
    LIURabbit *rabbit = liu_new("LIURabbit");
    objc_msgSend(rabbit, sel_registerName("eatShit"));
}

void liu_add_method() {
    LIUCat *cat = liu_new("LIUCat");
    [cat performSelector: NSSelectorFromString(@"eat:") withObject:@"dynamic call"];
}

void liu_add_property() {
    LIUCat *cat = liu_new("LIUCat");
    cat.age = 1;
    NSLog(@"cat's age is %lu", cat.age);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        liu_msg_send();
        liu_change_method();
        liu_add_method();
        liu_add_property();
    }
    return 0;
}
