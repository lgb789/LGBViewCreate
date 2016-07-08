//
//  LGBTableViewManager.m
//  qcjrgj
//
//  Created by lgb on 16/7/7.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import "LGBTableViewManager.h"
#import <UIKit/UIKit.h>

@interface LGBTableViewManager () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation LGBTableViewManager

#pragma mark - 公有方法

#pragma mark - 重写父类方法

#pragma mark - 代理

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return (self.rowsOfSection ? self.rowsOfSection (tableView, section) : 0);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return self.sections;
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return (self.rowHeight ? self.rowHeight (tableView, indexPath) : 0);
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return (self.configCell ? self.configCell (tableView, indexPath) : nil);
}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (self.selectedRow)
    {
        self.selectedRow (tableView, indexPath);
    }
}

- (UIView*)tableView:(UITableView*)tableView viewForHeaderInSection:(NSInteger)section
{
    return (self.headerView ? self.headerView (tableView, section) : nil);
}

- (UIView*)tableView:(UITableView*)tableView viewForFooterInSection:(NSInteger)section
{
    return (self.footerView ? self.footerView (tableView, section) : nil);
}

- (CGFloat)tableView:(UITableView*)tableView heightForHeaderInSection:(NSInteger)section
{
    return (self.headerHeight ? self.headerHeight (tableView, section) : 0);
}

- (CGFloat)tableView:(UITableView*)tableView heightForFooterInSection:(NSInteger)section
{
    return (self.footerHeight ? self.footerHeight (tableView, section) : 0);
}

#pragma mark - 事件处理

#pragma mark - 私有方法

#pragma mark - 成员变量初始化与设置

@end
