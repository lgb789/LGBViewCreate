//
//  UITextField+lgb_textField.m
//  LGBLabel
//
//  Created by lgb on 16/7/1.
//  Copyright © 2016年 com.dnj. All rights reserved.
//

#import "UITextField+lgb_textField.h"

@implementation UITextField (lgb_textField)

+ (UITextField*)lgb_textFieldWithTextColor:(UIColor*)textColor
                             textAlignment:(NSTextAlignment)alignment
                                      font:(UIFont*)font
                           clearButtonMode:(UITextFieldViewMode)clearButtonMode
                             returnKeyType:(UIReturnKeyType)returnKeyType
                                secureText:(BOOL)secureText
                                  delegate:(id)delegate
{
    UITextField* tf    = [[UITextField alloc] init];
    tf.textColor       = textColor;
    tf.textAlignment   = alignment;
    tf.font            = font;
    tf.clearButtonMode = clearButtonMode;
    tf.returnKeyType   = returnKeyType;
    tf.secureTextEntry = secureText;
    tf.delegate        = delegate;

    return tf;
}

@end
