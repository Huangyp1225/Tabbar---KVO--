//
//  DownloadViewController.m
//  Tabbar的使用-页面间传值(KVO-单例)
//
//  Created by Vic on 15/7/8.
//  Copyright (c) 2015年 Gem-inno. All rights reserved.
//

#import "DownloadViewController.h"

@interface DownloadViewController ()

@end

@implementation DownloadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.i = 0;
    
    self.amount = [Quantity addInstance];
    
    [self.amount addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:nil];
   

//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(test:) name:@"addOne" object:nil];
    
    // Do any additional setup after loading the view.
}
//- (void)test:(NSNotification*)notification{
//    
//    NSString *n = notification.object;
//    
//    self.i = self.i + n.intValue;
//    
//    self.downloadItem.badgeValue = [NSString stringWithFormat:@"%d",self.i];
//}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if ([keyPath isEqualToString:@"count"]) {
        if (self.amount.count == 0) {
            self.downloadItem.badgeValue = nil;
        }else{
            self.downloadItem.badgeValue = [NSString stringWithFormat:@"%ld",(long)self.amount.count];
        }
        
    }
}
- (void)dealloc{
   
     [[NSNotificationCenter defaultCenter] removeObserver:self name:@"addOne" object:nil];
    
    [self.amount removeObserver:self forKeyPath:@"count"];
}
@end
