//
//  RLBaseNavigationController.m
//  WKRLProject
//
//  Created by wankahuanju2 on 2018/12/20.
//  Copyright © 2018 wankahuanju2. All rights reserved.
//

#import "RLBaseNavigationController.h"

@interface RLBaseNavigationController ()

@end

@implementation RLBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage * image = [[UIImage alloc] init];
    [self.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.barStyle = UIBarStyleBlackOpaque;
    
    // Do any additional setup after loading the view.
}

- (void)popToBack
{
    [self popViewControllerAnimated:YES];
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
    // 修改tabBra的frame
    CGRect frame = self.tabBarController.tabBar.frame;
    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
    self.tabBarController.tabBar.frame = frame;
}


- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    return [super popViewControllerAnimated:animated];
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
