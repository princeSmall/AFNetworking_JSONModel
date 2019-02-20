//
//  RESModel.h
//  Afnetworking+JsonModel
//
//  Created by le tong on 2019/2/20.
//  Copyright © 2019 iOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel.h>

NS_ASSUME_NONNULL_BEGIN
@protocol questionsModel
@end
@interface questionsModel : JSONModel
@property (nonatomic, assign) NSInteger questionID;
@property (nonatomic, copy) NSString<Optional> *title;
@property (nonatomic, copy) NSString<Optional> *answer;

@end

@protocol resModel
@end
@interface resModel : JSONModel
@property (nonatomic, copy) NSString<Optional> *ghash;
@property (nonatomic, assign) NSInteger gid;
@property (nonatomic, copy) NSString<Optional> *title;
@property (nonatomic, copy) NSString<Optional> *thumb;
@property (nonatomic, strong) NSArray <Optional,questionsModel>*questions;

@end

@interface RESModel : JSONModel
@property (nonatomic, assign) NSInteger code;
@property (nonatomic, strong) NSArray<resModel,Optional>* res;
@end

NS_ASSUME_NONNULL_END
