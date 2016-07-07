//
//  UITableView+lgb_tableView.h
//  qcjrgj
//
//  Created by lgb789 on 16/7/4.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LGBTableViewTypeDef.h"

@interface UITableView (lgb_tableView)

+ (UITableView*)lgb_tableViewWithStyle:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource;

+ (UITableView*)lgb_tableViewWithStyle:(UITableViewStyle)style
                       NumberOfSection:(NSInteger)sections
                          numberOfRows:(LGBRowsOfSection)rows
                           heightOfRow:(LGBHeightOfRow)rowHeight
                            configCell:(LGBConfigCell)configCell
                           selectedRow:(LGBSelectedRow)selectedRow;

- (void)lgb_setHeaderView:(LGBViewForHeader)headerView height:(LGBHeightForHeader)height;

- (void)lgb_setFooterView:(LGBViewForFooter)footerView height:(LGBHeightForFooter)height;

@end
