//
//  UITextField+lgb_textField.h
//  LGBLabel
//
//  Created by lgb on 16/7/1.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (lgb_textField)

+ (UITextField*)lgb_textFieldWithTextColor:(UIColor*)textColor
                             textAlignment:(NSTextAlignment)alignment
                                      font:(UIFont*)font
                           clearButtonMode:(UITextFieldViewMode)clearButtonMode
                             returnKeyType:(UIReturnKeyType)returnKeyType
                                secureText:(BOOL)secureText
                                  delegate:(id)delegate;

@end
