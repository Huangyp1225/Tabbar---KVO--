//
//  Quantity.h
//  Tabbar的使用-页面间传值(KVO-单例)
//
//  Created by Vic on 15/7/8.
//  Copyright (c) 2015年 Gem-inno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quantity : NSObject

@property (nonatomic, assign) NSInteger count;

+ (Quantity*) addInstance;
@end
