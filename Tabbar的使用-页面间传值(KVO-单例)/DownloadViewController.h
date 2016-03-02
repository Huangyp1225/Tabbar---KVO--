//
//  DownloadViewController.h
//  Tabbar的使用-页面间传值(KVO-单例)
//
//  Created by Vic on 15/7/8.
//  Copyright (c) 2015年 Gem-inno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quantity.h"
@interface DownloadViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITabBarItem *downloadItem;

@property (assign, nonatomic) int i;

@property (strong, nonatomic) Quantity *amount;

@end
