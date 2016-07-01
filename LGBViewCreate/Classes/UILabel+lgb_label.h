//
//  UILabel+lgb_label.h
//  LGBLabel
//
//  Created by lgb789 on 16/7/1.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (lgb_label)

+ (UILabel*)lgb_labelWithBackgroundColor:(UIColor*)backgroundColor
                               textColor:(UIColor*)textColor
                           textAlignment:(NSTextAlignment)alignment
                           numberOfLines:(NSInteger)numberOfLines
                                    font:(UIFont*)font
                          adjustFontSize:(BOOL)adjust;

@end
