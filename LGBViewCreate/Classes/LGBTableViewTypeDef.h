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

typedef NSInteger (^LGBRowsOfSection) (NSInteger section);

typedef CGFloat (^LGBHeightOfRow) (NSIndexPath* indexPath);

typedef UITableViewCell* (^LGBConfigCell) (UITableView* tableView, NSIndexPath* indexPath);

typedef void (^LGBSelectedRow) (UITableView* tableView, NSIndexPath* indexPath);

typedef CGFloat(^LGBHeightForHeader)(NSInteger section);

typedef CGFloat(^LGBHeightForFooter)(NSInteger section);

typedef UIView *(^LGBViewForHeader)(NSInteger section);

typedef UIView *(^LGBViewForFooter)(NSInteger section);


#endif /* LGBTableViewTypeDef_h */
