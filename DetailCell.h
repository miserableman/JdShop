//
//  DetailCell.h
//  Shop
//
//  Created by 王 祥 on 14-8-18.
//  Copyright (c) 2014年 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *lblGoodDesc;

@property (strong, nonatomic) IBOutlet UILabel *lblGoodNum;
@property (strong, nonatomic) IBOutlet UILabel *lblTotalFree;
@property (strong, nonatomic) IBOutlet UILabel *totalNum;

@end
