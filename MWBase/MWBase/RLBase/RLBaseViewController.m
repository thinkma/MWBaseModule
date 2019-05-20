//
//  RLBaseViewController.m
//  WKRLProject
//
//  Created by wankahuanju2 on 2018/12/20.
//  Copyright © 2018 wankahuanju2. All rights reserved.
//

#import "RLBaseViewController.h"
#import "RLMacro.h"

@interface RLBaseViewController ()


@end

@implementation RLBaseViewController


- (instancetype)initWithParames:(NSDictionary *)Parames
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *leftbgView = [[UIView alloc] initWithFrame:CGRectMake(-5,STATUS_BAR_HEIGHT, 52, 52)];
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.contentMode = UIViewContentModeScaleToFill;
    self.leftButton = leftButton;
    leftButton.frame = CGRectMake(0, 5, 32, 32);
    [leftButton addTarget:self action:@selector(leftItemClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.leftButton setImage:[UIImage imageNamed:@"icon_black_Back"] forState:UIControlStateNormal];
    [self.leftButton setImage:[UIImage imageNamed:@"icon_black_Back"] forState:UIControlStateHighlighted];
    [leftbgView addSubview:leftButton];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftbgView];

    UIView *rightbgView = [[UIView alloc] initWithFrame:CGRectMake(-5,STATUS_BAR_HEIGHT, 70, 22)];
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.contentMode = UIViewContentModeScaleToFill;
    self.rightButton = rightButton;
    rightButton.frame = CGRectMake(0, -5, 32, 32);
    [rightButton addTarget:self action:@selector(rightItemClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.rightButton setImage:[UIImage imageNamed:@"icon_Back"] forState:UIControlStateNormal];
//    [self.rightButton setImage:[UIImage imageNamed:@"icon_Back"] forState:UIControlStateHighlighted];
    [rightbgView addSubview:rightButton];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightbgView];


//    leftbgView.backgroundColor = [UIColor redColor];
    
    // Do any additional setup after loading the view.
}

- (void)leftItemClick:(UIButton *)button{
    [self popViewController];
}

- (void)rightItemClick:(UIButton *)button
{}

- (void)creatSubView{};

- (void)addConstraintView{};

- (void)bindView{};

- (void)popViewController
{
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
