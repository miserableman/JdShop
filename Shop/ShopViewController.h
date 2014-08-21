//
//  ShopViewController.h
//  Shop
//
//  Created by 王 祥 on 14-8-15.
//  Copyright (c) 2014年 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShopViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UIButton *btnFix;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)btnFix:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnNotComplete;

@end
