//
//  TestViewController.m
//  TestRAC
//
//  Created by mac on 2019/9/2.
//  Copyright © 2019 Beans. All rights reserved.
//

#import "TestViewController.h"

#import <ReactiveObjC.h>

@interface TestViewController ()
@property(nonatomic, strong)UITextField *field;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    self.field = [[UITextField alloc]init];
    
    [self.view addSubview:self.field];
    
    [self.field setBackgroundColor:[UIColor redColor]];
    
    [self.field setFrame:CGRectMake(10, 100, 320, 44)];
    
    
//    [[self.field.rac_textSignal filter:^BOOL(id value) {
//          NSString *text = value;
//
//          return text.length > 3;
//      }]subscribeNext:^(id x) {
//         NSLog(@"%@", x);
//     }];
//
//
//    __weak typeof(self) weakSelf;
//    [self.field.rac_textSignal subscribeCompleted:^{
//        [weakSelf.field setBackgroundColor:[UIColor brownColor]];
//    }];
    
//    RACSignal *usernameSourceSignal =
//    self.field.rac_textSignal;
//
//    RACSignal *filteredUsername = [usernameSourceSignal
//                                   filter:^BOOL(id value) {
//                                       NSString *text = value;
//                                       return text.length > 3;
//                                   }];
//
//    [filteredUsername subscribeNext:^(id x) {
//        NSLog(@"%@", x);
//    }];
    
//    [[self.field.rac_textSignal
//      filter:^BOOL(id value) {
//          NSString *text = value; // implicit cast
//          return text.length > 3;
//      }]
//     subscribeNext:^(id x) {
//         NSLog(@"%@", x);
//     }];
    
//    [[[self.field.rac_textSignal
//      map:^id _Nullable(NSString * _Nullable value) {
//
//          return [NSNumber numberWithInteger:value.length];
//      }]
//      filter:^BOOL(NSNumber *text) {
//          return [text integerValue] > 3;
//      }]
//     subscribeNext:^(id x) {
//         NSLog(@"%@", x);
//     }];
    
//    RACSignal *validUsernameSignal =
//    [self.field.rac_textSignal
//     map:^id(NSString *text) {
//         return @([self isValidUsername:text]);
//     }];
//
//    [[validUsernameSignal map:^id (NSNumber * value) {
//        return [value boolValue] ?[UIColor redColor]:[UIColor brownColor];
//    }]subscribeNext:^(UIColor *color) {
//        [self.field setBackgroundColor:color];
//    }];
    self.field.backgroundColor = [self isValidUsername:self.field.text] ? [UIColor clearColor] : [UIColor yellowColor];

}

-(BOOL)isValidUsername:(NSString *)str{
    
    if (str.length > 3) {
        return NO;
    }else{
        return YES;
    }
    NSLog(@"str : %@", str);
    
    
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    
//    [self.field removeFromSuperview];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
