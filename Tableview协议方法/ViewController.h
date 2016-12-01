//
//  ViewController.h
//  Tableview协议方法
//
//  Created by 王俊钢 on 2016/12/2.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myTableViewCell.h"

@interface ViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate,myTabVdelegate>
@property(strong,nonatomic)UITableView *tableV;
@end

