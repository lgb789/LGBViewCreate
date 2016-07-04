//
//  UITableView+lgb_tableView.m
//  qcjrgj
//
//  Created by lgb789 on 16/7/4.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import "UITableView+lgb_tableView.h"

@implementation UITableView (lgb_tableView)

+ (UITableView*)lgb_tableViewWithStyle:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource
{
    UITableView* tv = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tv.delegate     = delegate;
    tv.dataSource   = dataSource;

    return tv;
}

@end
