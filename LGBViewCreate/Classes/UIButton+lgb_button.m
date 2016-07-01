//
//  UIButton+lgb_button.m
//  LGBLabel
//
//  Created by lgb789 on 16/7/1.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import "UIButton+lgb_button.h"
#import <objc/runtime.h>

@implementation UIButton (lgb_button)

+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
           titleHighlightedColor:(UIColor*)titleHighlightedColor
                       titleFont:(UIFont*)font
{
    UIButton* bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setTitle:title forState:UIControlStateNormal];
    [bt setTitleColor:titleColor forState:UIControlStateNormal];
    if (titleHighlightedColor)
    {
        [bt setTitleColor:titleHighlightedColor forState:UIControlStateHighlighted];
    }
    bt.titleLabel.font = font;

    return bt;
}

+ (UIButton*)lgb_buttonWithImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage
{
    UIButton* bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setImage:image forState:UIControlStateNormal];
    if (highlightedImage)
    {
        [bt setImage:highlightedImage forState:UIControlStateHighlighted];
    }

    return bt;
}

- (void)lgb_setBackgroundImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage
{
    [self setBackgroundImage:image forState:UIControlStateNormal];
    if (highlightedImage)
    {
        [self setBackgroundImage:highlightedImage forState:UIControlStateHighlighted];
    }
}

- (void)lgb_setAction:(void (^) (void))action
{
    [self addTarget:self action:@selector (lgb_handleButton) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject (self, @selector (lgb_action), action, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^) (void))lgb_action
{
    return objc_getAssociatedObject (self, _cmd);
}

- (void)lgb_handleButton
{
    id action = [self lgb_action];
    if (action)
    {
        ((void (^) (void))action) ();
    }
}

@end
