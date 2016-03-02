//
//  Quantity.m
//  Tabbar的使用-页面间传值(KVO-单例)
//
//  Created by Vic on 15/7/8.
//  Copyright (c) 2015年 Gem-inno. All rights reserved.
//

#import "Quantity.h"

static Quantity *addObj = nil; //第一步：静态实例，并初始化。
@implementation Quantity


+ (Quantity*) addInstance  //第二步：实例构造检查静态实例是否为nil
{
    @synchronized (self)
    {
        if (addObj == nil)
        {
            addObj =   [[self alloc] init];
        }
    }
    return addObj;
}

+ (id) allocWithZone:(NSZone *)zone //第三步：重写allocWithZone方法
{
    @synchronized (self) {
        if (addObj == nil) {
            addObj = [super allocWithZone:zone];
            return addObj;
        }
    }
    return nil;
}

- (id) copyWithZone:(NSZone *)zone //第四步
{
    return self;
}


- (id)init
{
    @synchronized(self) {
        self =  [super init];//往往放一些要初始化的变量.
        return self;
    }
}
@end
