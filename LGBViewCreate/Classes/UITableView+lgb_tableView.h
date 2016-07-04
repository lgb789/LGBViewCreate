//
//  UITableView+lgb_tableView.h
//  qcjrgj
//
//  Created by lgb789 on 16/7/4.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (lgb_tableView)

+ (UITableView*)lgb_tableViewWithStyle:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource;

@end
