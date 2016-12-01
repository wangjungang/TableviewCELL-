//
//  ViewController.m
//  Tableview协议方法
//
//  Created by 王俊钢 on 2016/12/2.
//  Copyright © 2016年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "myTableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableV = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableV.delegate = self;
    _tableV.dataSource = self;
    
    [self.view addSubview:_tableV];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"identify";
    myTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[myTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    //    cell.btn.tag = indexPath.row;
    
    //给代码赋值
    cell.btnClick = ^(){
        NSLog(@"222===%ld",indexPath.row);
    };
    
    //给代理赋值
    cell.delegate = self;
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"1111====%ld",indexPath.row);
}


//实现代理
-(void)myTabVClick:(UITableViewCell *)cell
{
    NSIndexPath *index = [_tableV indexPathForCell:cell];
    
    NSLog(@"333===%ld",index.row);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
