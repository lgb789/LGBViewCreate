//
//  UIButton+lgb_button.h
//  LGBLabel
//
//  Created by lgb789 on 16/7/1.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (lgb_button)

+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
           titleHighlightedColor:(UIColor*)titleHighlightedColor
                       titleFont:(UIFont*)font;

+ (UIButton*)lgb_buttonWithImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage;

- (void)lgb_setAction:(void (^) (void))action;

@end
