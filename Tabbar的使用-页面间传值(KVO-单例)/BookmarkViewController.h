//
//  BookmarkViewController.h
//  Tabbar的使用-页面间传值(KVO-单例)
//
//  Created by Vic on 15/7/8.
//  Copyright (c) 2015年 Gem-inno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DownloadViewController.h"
@interface BookmarkViewController : UIViewController

@property (strong, nonatomic) Quantity *amount;

- (IBAction)addOne:(UIButton *)sender;

@end
