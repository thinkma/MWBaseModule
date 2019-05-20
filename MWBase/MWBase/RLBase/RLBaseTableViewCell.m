//
//  RLBaseTableViewCell.m
//  WKRLProject
//
//  Created by wankahuanju2 on 2019/1/17.
//  Copyright © 2019 wankahuanju2. All rights reserved.
//

#import "RLBaseTableViewCell.h"

@implementation RLBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

/**
 添加视图
 */
- (void)creatSubView{}
/**
 添加布局
 */
- (void)addConstraintView{}

/**
 绑定
 */
- (void)bindView{}

- (void)configViewCellModel:(id)model{}

@end
