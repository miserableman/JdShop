//
//  ShopViewController.m
//  Shop
//
//  Created by 王 祥 on 14-8-15.
//  Copyright (c) 2014年 com. All rights reserved.
//

#import "ShopViewController.h"
#import "DetailCell.h"

@interface ShopViewController ()

@end

@implementation ShopViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnFix:(id)sender {
    NSLog(@"aaa");
}

#pragma mark tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indentifier = @"LTCellWeiList";
    DetailCell *cell = (DetailCell *)[tableView dequeueReusableCellWithIdentifier:indentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"DetailCell" owner:self options:nil]lastObject];
    }
    
    cell.lblGoodDesc.text =@"土豪不是热土豪不是热土豪不是热土豪不是热";
    
    

    
    
    return cell;;;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 190;
}


@end
