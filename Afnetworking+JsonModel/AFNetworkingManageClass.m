

//
//  AFNetworkingManageClass.m
//  Afnetworking+JsonModel
//
//  Created by le tong on 2019/2/20.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "AFNetworkingManageClass.h"
#import <AFNetworking.h>

@implementation AFNetworkingManageClass

+ (void)getWithURLString:(NSString *)URLString parameters:(id)parameters success:(void (^)(id _Nonnull))success failure:(void (^)(NSError * _Nonnull))failure{
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.responseSerializer = [AFHTTPResponseSerializer serializer];
    session.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [session GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}
+ (void)postWithURLString:(NSString *)URLString
              parameters:(id)parameters
                 success:(void (^)(id responseObject))success
                  failure:(void (^)(NSError *error))failure{
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.responseSerializer = [AFHTTPResponseSerializer serializer];
    session.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [session POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}
@end
