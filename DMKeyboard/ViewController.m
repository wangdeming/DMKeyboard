//
//  ViewController.m
//  DMKeyboard
//
//  Created by SDC201 on 2017/5/3.
//  Copyright © 2017年 PCEBG. All rights reserved.
//

#import "ViewController.h"
#import "DMRandomKeyboard.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.delegate = self;
    
    DMRandomKeyboard *keyBoad = [[DMRandomKeyboard alloc] initWithTitleColor:[UIColor blackColor] backGroundImage:[UIImage imageNamed:@"bg.jpg"]];
    [keyBoad setInputView:textField];
    [self.view addSubview:textField];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    /*不建议每次点击都随机键盘，随机键盘只是为了避免键盘监控的，同一输入点每次都随机，会给用户造成学习成本*/
    DMRandomKeyboard *keyBoad = [[DMRandomKeyboard alloc] initWithTitleColor:[UIColor blackColor] backGroundImage:[UIImage imageNamed:@"bg.jpg"]];
    [keyBoad setInputView:textField];
    return YES;
}

@end
