//
//  LGBTestTableController.m
//  LGBViewCreate
//
//  Created by lgb on 16/7/8.
//  Copyright © 2016年 lgb789. All rights reserved.
//

#import "LGBTestTableController.h"

#import "LGBViewCreate.h"

@interface LGBTestTableController ()

@end

@implementation LGBTestTableController

#pragma mark - 生命周期

- (void)viewDidLoad
{
    [super viewDidLoad];
    /* add subviews */

    [self layoutSubviews];

    UITableView* tv = [UITableView lgb_tableViewWithStyle:UITableViewStylePlain
    NumberOfSection:1
    numberOfRows:^NSInteger (NSInteger section) {
      NSLog (@"rows");
      return 3;
    }
    heightOfRow:^CGFloat (NSIndexPath* indexPath) {
      NSLog (@"height");
      return 44;
    }
    configCell:^UITableViewCell*(UITableView* tableView, NSIndexPath* indexPath) {
      UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
      NSLog (@"cell:%@", cell);
      if (cell == nil)
      {
          cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
      }
      cell.textLabel.text = [NSString stringWithFormat:@"cell-->%ld", indexPath.row];
      return cell;
    }
    selectedRow:^(UITableView* tableView, NSIndexPath* indexPath) {
      [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }];
    
    [tv lgb_setHeaderView:^UIView *(NSInteger section) {
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor lightGrayColor];
        return view;
    } height:^CGFloat(NSInteger section) {
        return 30;
    }];

    tv.frame = self.view.bounds;

    [self.view addSubview:tv];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    /* add notificatioin */
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    /* remove notificatioin */
}

#pragma mark - 代理

#pragma mark - 事件处理

#pragma mark - 私有方法

- (void)layoutSubviews
{
}

#pragma mark - 成员变量初始化与设置

@end
