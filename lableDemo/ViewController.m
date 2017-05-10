//
//  ViewController.m
//  lableDemo
//
//  Created by shuzhenguo on 2017/4/7.
//  Copyright © 2017年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "ExpandLabel.h"

@interface ViewController ()
{
    ExpandLabel * expandLab;
    UILabel * bottomLab;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initUI];

}

- (void)initUI {
    
    
    __block typeof(self) weakSelf = self;
    
    expandLab = [[ExpandLabel alloc] initWithFrame:CGRectMake(0, 20, 320, 0)];
    [expandLab setLabelText:@"放大发发看房看房卡难看啦女阿卡拉萨路那边那把大把大神了奥德赛吧是不是把那边艾斯比啊是\n\ndafa放大发发看房看房卡难看啦女阿卡拉萨路那边那把大把大神了奥德赛吧是不是把那边艾斯比啊是\n\ndafa放大发发看房看房卡难看啦女阿卡拉萨路那边那把大把大神了奥德赛吧是不是把那边艾斯比啊是\n\ndafa放大发发看房看房卡难看啦女阿卡拉萨路那边那把大把大神了奥德赛吧是不是把那边艾斯比啊是\n\ndafavbdfjbvdjfvbdvbefeugfuegfuyergfuyergyhchdsvhvhgvhcvchvdhvfefyewuyfefgewfyfy" expandBlock:^{
        
        
        //点击展开 界面重新布局
        [weakSelf updateUI];
    }];
    expandLab.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:expandLab];
    
}

- (void)updateUI {
    
    NSLog(@"%f",expandLab.frame.size.height);

//    bottomLab.frame = CGRectMake(0, expandLab.frame.origin.y + expandLab.frame.size.height + 20, 320, 20);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
