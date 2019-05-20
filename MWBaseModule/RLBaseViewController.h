//
//  RLBaseViewController.h
//  WKRLProject
//
//  Created by wankahuanju2 on 2018/12/20.
//  Copyright © 2018 wankahuanju2. All rights reserved.
//

#import <UIKit/UIKit.h>



NS_ASSUME_NONNULL_BEGIN

@interface RLBaseViewController : UIViewController

@property (nonatomic,assign)CGFloat topOffset;

- (instancetype)initWithParames:(NSDictionary *)Parames;

@property (nonatomic,strong)UIButton * leftButton;
@property (nonatomic,strong)UIButton * rightButton;

- (void)leftItemClick:(UIButton *)button;
- (void)rightItemClick:(UIButton *)button;


// 评论页面和回复页面 返回 判断是否后为推送过去
@property (nonatomic,assign)BOOL isPush;  


/**
 添加视图
 */
- (void)creatSubView;
/**
 添加布局
 */
- (void)addConstraintView;

/**
 绑定
 */
- (void)bindView;

- (void)popViewController;






@end

NS_ASSUME_NONNULL_END
