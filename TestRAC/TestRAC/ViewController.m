//
//  ViewController.m
//  TestRAC
//
//  Created by mac on 2019/9/2.
//  Copyright © 2019 Beans. All rights reserved.
//

#import "ViewController.h"

#import <ReactiveObjC.h>


@interface ViewController ()

@property(nonatomic, strong)UITextField *field;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.field];
    
    [self.field setBackgroundColor:[UIColor redColor]];
    
    [self.field setFrame:CGRectMake(0, 100, 320, 44)];
    
    
    [self.field.rac_textSignal subscribeNext:^(NSString * _Nullable x) {
        NSLog(@"x : %@",x);
    }];
}


@end
