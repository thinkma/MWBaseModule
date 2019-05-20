//
//  RLBaseTableViewCell.h
//  WKRLProject
//
//  Created by wankahuanju2 on 2019/1/17.
//  Copyright © 2019 wankahuanju2. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface RLBaseTableViewCell : UITableViewCell

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

- (void)configViewCellModel:(id)model;

@end

NS_ASSUME_NONNULL_END
