//
//  UIButton+lgb_button.h
//  LGBLabel
//
//  Created by lgb789 on 16/7/1.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (lgb_button)

/**
 *  创建 button
 *
 *  @param title                 标题
 *  @param titleColor            常态颜色
 *  @param titleHighlightedColor 事件颜色
 *  @param font                  字体
 *  @param state                 状态
 *  @return button
 */
+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
                 titleEventColor:(UIColor*)titleEventColor
                       titleFont:(UIFont*)font
                           state:(UIControlState)state;

/**
 *  创建 button
 *
 *  @param title                 标题
 *  @param titleColor            常态颜色
 *  @param titleHighlightedColor 高亮颜色
 *  @param font                  字体
 *
 *  @return button
 */
+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
           titleHighlightedColor:(UIColor*)titleHighlightedColor
                       titleFont:(UIFont*)font;

/**
 *  创建 button
 *
 *  @param title                 标题
 *  @param titleColor            常态颜色
 *  @param titleHighlightedColor 选中颜色
 *  @param font                  字体
 *
 *  @return button
 */
+ (UIButton*)lgb_buttonWithTitle:(NSString*)title
                      titleColor:(UIColor*)titleColor
              titleSelectedColor:(UIColor*)titleSelectedColor
                       titleFont:(UIFont*)font;


/**
 *  创建 button
 *
 *  @param image      常态图片
 *  @param eventImage 状态图片
 *  @param state      状态
 *
 *  @return button
 */
+ (UIButton*)lgb_buttonWithImage:(UIImage*)image eventImage:(UIImage*)eventImage state:(UIControlState)state;


/**
 *  创建 button
 *
 *  @param image             常态图片
 *  @param highlightedImage  高亮图片
 *
 *  @return button
 */
+ (UIButton*)lgb_buttonWithImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage;

/**
 *  创建 button
 *
 *  @param image         常态图片
 *  @param selectedImage 选中图片
 *
 *  @return button
 */
+ (UIButton*)lgb_buttonWithImage:(UIImage*)image selectedImage:(UIImage*)selectedImage;


/**
 *  设置 button 背景图片
 *
 *  @param image      常态图片
 *  @param eventImage 状态图片
 *  @param state      状态
 */
- (void)lgb_setBackgroundImage:(UIImage*)image eventImage:(UIImage*)eventImage state:(UIControlState)state;

/**
 *  设置 button 背景图片
 *
 *  @param image            常态图片
 *  @param highlightedImage 高亮图片
 */
- (void)lgb_setBackgroundImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage;

/**
 *  设置 button 背景图片
 *
 *  @param image            常态图片
 *  @param highlightedImage 选中图片
 */
- (void)lgb_setBackgroundImage:(UIImage*)image selectedImage:(UIImage*)selectedImage;

/**
 *  设置 button 事件
 *
 *  @param action 事件
 */
- (void)lgb_setAction:(void (^) (void))action;

@end
