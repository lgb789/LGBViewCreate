//
//  LGBTableViewTypeDef.h
//  LGBViewCreate
//
//  Created by lgb on 16/7/7.
//  Copyright © 2016年 lgb789. All rights reserved.
//

#ifndef LGBTableViewTypeDef_h
#define LGBTableViewTypeDef_h

#import <UIKit/UIKit.h>

typedef NSInteger (^LGBRowsOfSection) (UITableView* tableView, NSInteger section);

typedef CGFloat (^LGBHeightOfRow) (UITableView* tableView, NSIndexPath* indexPath);

typedef UITableViewCell* (^LGBConfigCell) (UITableView* tableView, NSIndexPath* indexPath);

typedef void (^LGBSelectedRow) (UITableView* tableView, NSIndexPath* indexPath);

typedef CGFloat(^LGBHeightForHeader)(UITableView* tableView, NSInteger section);

typedef CGFloat(^LGBHeightForFooter)(UITableView* tableView, NSInteger section);

typedef UIView *(^LGBViewForHeader)(UITableView* tableView, NSInteger section);

typedef UIView *(^LGBViewForFooter)(UITableView* tableView, NSInteger section);


#endif /* LGBTableViewTypeDef_h */
