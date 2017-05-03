# DMKeyboard

  使用方法：
  DMRandomKeyboard.h
  
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
  
  
  示例图片如下：
  
  
  ![]()
