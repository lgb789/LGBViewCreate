//
//  UITableView+lgb_tableView.m
//  qcjrgj
//
//  Created by lgb789 on 16/7/4.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import "LGBTableViewManager.h"
#import "UITableView+lgb_tableView.h"
#import <objc/runtime.h>

@implementation UITableView (lgb_tableView)

+ (UITableView*)lgb_tableViewWithStyle:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource
{
    UITableView* tv = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tv.delegate     = delegate;
    tv.dataSource   = dataSource;

    return tv;
}

+ (UITableView*)lgb_tableViewWithStyle:(UITableViewStyle)style
                       NumberOfSection:(NSInteger)sections
                          numberOfRows:(LGBRowsOfSection)rows
                           heightOfRow:(LGBHeightOfRow)rowHeight
                            configCell:(LGBConfigCell)configCell
                           selectedRow:(LGBSelectedRow)selectedRow
{
    LGBTableViewManager* manager = [LGBTableViewManager new];
    manager.sections             = sections;
    manager.rowsOfSection        = rows;
    manager.rowHeight            = rowHeight;
    manager.configCell           = configCell;
    manager.selectedRow          = selectedRow;

    UITableView* tv = [self lgb_tableViewWithStyle:style delegate:manager dataSource:manager];
    [tv lgb_setManager:manager];
    return tv;
}

- (void)lgb_setHeaderView:(LGBViewForHeader)headerView height:(LGBHeightForHeader)height
{
    LGBTableViewManager* manager = [self lgb_manager];
    if (manager)
    {
        manager.headerView   = headerView;
        manager.headerHeight = height;
    }
}

- (void)lgb_setFooterView:(LGBViewForFooter)footerView height:(LGBHeightForFooter)height
{
    LGBTableViewManager* manager = [self lgb_manager];
    if (manager)
    {
        manager.footerView   = footerView;
        manager.footerHeight = height;
    }
}

- (void)lgb_setManager:(LGBTableViewManager*)manager
{
    objc_setAssociatedObject (self, @selector(lgb_manager), manager, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(LGBTableViewManager *)lgb_manager
{
    return objc_getAssociatedObject(self, _cmd);
}

@end
