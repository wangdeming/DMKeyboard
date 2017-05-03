//
//  DMRandomKeyboard.h
//  DMKeyboard
//
//  Created by SDC201 on 2017/5/3.
//  Copyright © 2017年 PCEBG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DMRandomKeyboard : UIView

@property (strong, nonatomic)UIColor *titleColor;//文字颜色
@property (strong, nonatomic)UIFont *font;//字体
@property (strong, nonatomic)UIColor *numberBackgroundColor;//按钮块的背景颜色
@property (strong, nonatomic)UIColor *keyboardColor;//键盘背景颜色
@property (strong, nonatomic)UIImage *backgroundImage;//背景图片
/**
 *  初始化方法
 *
 *  @param color 按键文字颜色可传nil
 *  @param image 背景图片可传nil
 *
 */
-(instancetype)initWithTitleColor:(UIColor *)color backGroundImage:(UIImage *)image;
/**
 *  设置输入源的inputView
 *
 */
-(void)setInputView:(UIView *)view;

@end
