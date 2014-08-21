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
    NSData* data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"MyOrder" ofType:@"json"]];
    NSDictionary* dictionary = [NSJSONSerialization JSONObjectWithData:  data options:NSJSONReadingMutableContainers error:nil];
    NSLog(@"%@",dictionary);//""
    self.arry = [dictionary objectForKey:@"data"];
    for (NSDictionary *obj in self.arry) {
         NSLog(@"%@",[obj objectForKey:@"formated_bonus"]);
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 未完成订单
- (IBAction)btnNotComplete:(id)sender {
    NSLog(@"NotComplete");
    self.arry = [self.arry arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"0987",@"0987",@"0987",@"0987", nil]];
    [self.tableView reloadData];
}
// 完成订单
- (IBAction)btnComplete:(id)sender {
    NSLog(@"Complete");
}

#pragma mark tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.arry count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dictionary = [self.arry objectAtIndex:indexPath.row];
    
    
    static NSString *indentifier = @"LTCellWeiList";
    DetailCell *cell = (DetailCell *)[tableView dequeueReusableCellWithIdentifier:indentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"DetailCell" owner:self options:nil]lastObject];
    }
    
    cell.lblGoodDesc.text =[dictionary objectForKey:@"name"];
    NSLog(@"%@",dictionary);
    NSLog(@"%@",[dictionary objectForKey:@"name"]);
  
    cell.lblGoodNum.text = [dictionary objectForKey:@"subtotal"];
    

    
    
    return cell;;;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 190;
}


@end
