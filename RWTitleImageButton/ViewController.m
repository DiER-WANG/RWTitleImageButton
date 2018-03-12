//
//  ViewController.m
//  RWTitleImageButton
//
//  Created by 王昌阳 on 2018/3/12.
//  Copyright © 2018年 wangchangyang. All rights reserved.
//

#import "ViewController.h"
#import "RWTitleImageButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"icon_image"];

    RWTitleImageButton *btn = [[RWTitleImageButton alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    [self.view addSubview:btn];
    btn.center = self.view.center;
    btn.fontSize = 16;
    btn.imageSize = CGSizeMake(33, 33);
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn setTitle:@"我在左边"
         forState:UIControlStateNormal];
    [btn setImage:image
         forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
