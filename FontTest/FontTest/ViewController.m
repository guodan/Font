//
//  ViewController.m
//  FontTest
//
//  Created by 南鑫林 on 16/9/7.
//  Copyright © 2016年 adan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //xib
    self.label.text = @"Hello world!";
    
    //代码
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 80, 70)];
    lab.text = @"lab";
    lab.backgroundColor = [UIColor cyanColor];
    lab.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lab];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
