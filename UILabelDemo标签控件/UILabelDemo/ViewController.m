//
//  ViewController.m
//  UILabelDemo
//
//  Created by Mac on 15/11/23.
//  Copyright © 2015年 Amy. All rights reserved.
//

#import "ViewController.h"

//匿名类别 声明私有属性和方法
@interface ViewController ()

@end

@implementation ViewController

//视图完成加载
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 标签控件 UILabel:UIView
    //创建UILabel控件的对象
    UILabel *label = [[UILabel alloc] init];
    //给标签控件设定坐标位置 以及大小
    label.frame = CGRectMake(100, 100, 100, 100);
    
    
    //给label添加文本
    label.text = @"hello world!\nhello world!\nhello world!";
    
    //给label设定文本的颜色
    label.textColor = [UIColor orangeColor ];
    
    //设置背景颜色
    label.backgroundColor = [UIColor cyanColor];

    //设置label文本的对齐方式,默认的左对齐
    label.textAlignment = NSTextAlignmentCenter;
    
    //设定字体的大小,默认的17号
    label.font = [UIFont systemFontOfSize:15];
    
    //设定label显示多行,0代表允许显示的最大行数
    label.numberOfLines = 0;
    
    //文本自适应label的大小
    label.adjustsFontSizeToFitWidth = YES;
    
    //旋转；<#CGFloat angle#>角度
    label.transform = CGAffineTransformMakeRotation(0/180.0*M_PI);
    
    //设定label的边框
    label.layer.borderColor = [[UIColor magentaColor] CGColor];
    label.layer.borderWidth = 3;
    //将label裁剪成椭圆
    label.layer.cornerRadius = 30;
    //不显示父视图之外的子视图
    label.clipsToBounds = YES;
    
    //将label添加到父视图上面
    [self.view addSubview:label];
    
    
    
    
    
}

//应用程序接收到（MemoryWarning）内存警告后 会调用此方法
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
