//
//  AFNetworkingManageClass.h
//  Afnetworking+JsonModel
//
//  Created by le tong on 2019/2/20.
//  Copyright © 2019 iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFNetworkingManageClass : NSObject

+ (void)getWithURLString:(NSString *)URLString
              parameters:(id)parameters
                 success:(void (^)(id responseObject))success
                 failure:(void (^)(NSError *error))failure;

+ (void)postWithURLString:(NSString *)URLString
              parameters:(id)parameters
                 success:(void (^)(id responseObject))success
                 failure:(void (^)(NSError *error))failure;
@end

NS_ASSUME_NONNULL_END
