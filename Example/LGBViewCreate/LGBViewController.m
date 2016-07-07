//
//  LGBViewController.m
//  LGBViewCreate
//
//  Created by lgb789 on 07/01/2016.
//  Copyright (c) 2016 lgb789. All rights reserved.
//

#import "LGBViewController.h"
#import "LGBViewCreate.h"
#import "LGBTestTableController.h"

@interface LGBViewController ()

@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIButton *bt = [UIButton lgb_buttonWithTitle:@"button" titleColor:[UIColor redColor] titleHighlightedColor:nil titleFont:[UIFont systemFontOfSize:14.0f]];
    bt.frame = CGRectMake(100, 100, 100, 50);
    __weak typeof(self) weakSelf = self;
    [bt lgb_setAction:^{
        [weakSelf.navigationController pushViewController:[LGBTestTableController new] animated:YES];
    }];
    [self.view addSubview:bt];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
