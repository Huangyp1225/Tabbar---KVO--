//
//  BookmarkViewController.m
//  Tabbar的使用-页面间传值(KVO-单例)
//
//  Created by Vic on 15/7/8.
//  Copyright (c) 2015年 Gem-inno. All rights reserved.
//

#import "BookmarkViewController.h"

@interface BookmarkViewController ()

@end

@implementation BookmarkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.amount = [Quantity addInstance];
    
    [self.amount setValue:[NSNumber numberWithInteger:0] forKey:@"count"];

}

- (IBAction)addOne:(UIButton *)sender {
    
    NSString *str = [self.amount valueForKey:@"count"];
    NSInteger  i = str.integerValue;
    i = i + 1 ;
    [self.amount setValue:[NSNumber numberWithInteger:i] forKey:@"count"];
    NSLog(@"%ld",(long)self.amount.count);
    
    
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"addOne" object:@"1"];
}
@end
