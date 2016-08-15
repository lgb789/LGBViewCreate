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

//class methods
+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
                 titleEventColor:(UIColor*)titleEventColor
                       titleFont:(UIFont*)font
                           state:(UIControlState)state
{
    UIButton* bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setTitle:title forState:UIControlStateNormal];
    [bt setTitleColor:titleColor forState:UIControlStateNormal];
    if (titleEventColor)
    {
        [bt setTitleColor:titleEventColor forState:state];
    }
    bt.titleLabel.font = font;
    
    return bt;
}


+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
           titleHighlightedColor:(UIColor*)titleHighlightedColor
                       titleFont:(UIFont*)font
{
    UIButton* bt = [self lgb_buttonWithTitle:title titleColor:titleColor titleEventColor:titleHighlightedColor titleFont:font state:UIControlStateHighlighted];

    return bt;
}

+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
              titleSelectedColor:(UIColor*)titleSelectedColor
                       titleFont:(UIFont*)font
{
    UIButton* bt = [self lgb_buttonWithTitle:title titleColor:titleColor titleEventColor:titleSelectedColor titleFont:font state:UIControlStateSelected];
    
    return bt;
}

+ (UIButton*)lgb_buttonWithImage:(UIImage*)image eventImage:(UIImage*)eventImage state:(UIControlState)state
{
    UIButton* bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setImage:image forState:UIControlStateNormal];
    if (eventImage)
    {
        [bt setImage:eventImage forState:state];
    }
    
    return bt;
}

+ (UIButton*)lgb_buttonWithImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage
{
    UIButton* bt = [self lgb_buttonWithImage:image eventImage:highlightedImage state:UIControlStateHighlighted];

    return bt;
}

+ (UIButton*)lgb_buttonWithImage:(UIImage*)image selectedImage:(UIImage*)selectedImage
{
    UIButton* bt = [self lgb_buttonWithImage:image eventImage:selectedImage state:UIControlStateSelected];
    
    return bt;
}

//object methods

- (void)lgb_setBackgroundImage:(UIImage*)image eventImage:(UIImage*)eventImage state:(UIControlState)state
{
    [self setBackgroundImage:image forState:UIControlStateNormal];
    if (eventImage)
    {
        [self setBackgroundImage:eventImage forState:state];
    }
}

- (void)lgb_setBackgroundImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage
{
    [self lgb_setBackgroundImage:image eventImage:highlightedImage state:UIControlStateHighlighted];
}

- (void)lgb_setBackgroundImage:(UIImage*)image selectedImage:(UIImage*)selectedImage
{
    [self lgb_setBackgroundImage:image eventImage:selectedImage state:UIControlStateSelected];
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
