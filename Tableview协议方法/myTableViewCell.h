//
//  myTableViewCell.h
//  Tableview协议方法
//
//  Created by 王俊钢 on 2016/12/2.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

#import <UIKit/UIKit.h>

//创建一个代理
@protocol myTabVdelegate <NSObject>

-(void)myTabVClick:(UITableViewCell *)cell;

@end

@interface myTableViewCell : UITableViewCell

//声明一个代码块
@property(strong,nonatomic)void(^btnClick)();

@property(strong,nonatomic)UIButton *btn;

@property(assign,nonatomic)id<myTabVdelegate>delegate;
@end
