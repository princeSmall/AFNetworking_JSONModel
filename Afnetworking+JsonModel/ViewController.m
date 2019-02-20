//
//  ViewController.m
//  Afnetworking+JsonModel
//
//  Created by le tong on 2019/2/20.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworkingManageClass.h"
#import "RESModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *url = @"http://58.211.36.116:8081/apph5/goods/hot-";//测试URL不可用
    NSDictionary *dic = nil;
    [AFNetworkingManageClass getWithURLString:url parameters:dic success:^(id  _Nonnull responseObject) {
        RESModel *model = [[RESModel alloc]initWithData:responseObject error:nil];
        NSLog(@"%@",model);
    } failure:^(NSError * _Nonnull error) {
        
    }];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
