//
//  LGBTableViewManager.h
//  qcjrgj
//
//  Created by lgb on 16/7/7.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import "LGBTableViewTypeDef.h"
#import <Foundation/Foundation.h>

@interface LGBTableViewManager : NSObject
@property (nonatomic, assign) NSInteger        sections;
@property (nonatomic, copy) LGBHeightOfRow     rowHeight;
@property (nonatomic, copy) LGBRowsOfSection   rowsOfSection;
@property (nonatomic, copy) LGBHeightOfRow     heightOfRow;
@property (nonatomic, copy) LGBConfigCell      configCell;
@property (nonatomic, copy) LGBSelectedRow     selectedRow;
@property (nonatomic, copy) LGBViewForHeader   headerView;
@property (nonatomic, copy) LGBHeightForHeader headerHeight;
@property (nonatomic, copy) LGBViewForFooter   footerView;
@property (nonatomic, copy) LGBHeightForFooter footerHeight;
@end
