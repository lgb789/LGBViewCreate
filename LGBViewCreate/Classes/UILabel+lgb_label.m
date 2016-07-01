//
//  UILabel+lgb_label.m
//  LGBLabel
//
//  Created by lgb789 on 16/7/1.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import "UILabel+lgb_label.h"

@implementation UILabel (lgb_label)

+ (UILabel*)lgb_labelWithBackgroundColor:(UIColor*)backgroundColor
                               textColor:(UIColor*)textColor
                           textAlignment:(NSTextAlignment)alignment
                           numberOfLines:(NSInteger)numberOfLines
                                    font:(UIFont*)font
                          adjustFontSize:(BOOL)adjust
{
    UILabel* lb                  = [UILabel new];
    lb.backgroundColor           = backgroundColor;
    lb.textColor                 = textColor;
    lb.textAlignment             = alignment;
    lb.numberOfLines             = numberOfLines;
    lb.font                      = font;
    lb.adjustsFontSizeToFitWidth = adjust;

    return lb;
}

@end
