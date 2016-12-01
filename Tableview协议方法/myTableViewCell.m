//
//  myTableViewCell.m
//  Tableview协议方法
//
//  Created by 王俊钢 on 2016/12/2.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

#import "myTableViewCell.h"

#import "myTableViewCell.h"

@implementation myTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn.frame = CGRectMake(10, 10, 100, 30);
        [_btn setTitle:@"test" forState:UIControlStateNormal];
        [_btn setBackgroundColor:[UIColor redColor]];
        
        [_btn addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_btn];
    }
    return self;
}

//按钮事件
-(void)test:(UIButton *)sender
{
    //    NSLog(@"%d",sender.tag);
    //实现代码块
    //    if (self.btnClick) {
    //        self.btnClick();
    //    }
    
    [self.delegate myTabVClick:self];
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


@end
