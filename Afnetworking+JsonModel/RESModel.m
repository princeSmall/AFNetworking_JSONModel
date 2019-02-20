//
//  RESModel.m
//  Afnetworking+JsonModel
//
//  Created by le tong on 2019/2/20.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "RESModel.h"
@implementation questionsModel
+(BOOL)propertyIsOptional:(NSString*)propertyName
{
    return YES;
}
+ (JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"questionID": @"id",
                                                                  }];
}
@end

@implementation resModel
+(BOOL)propertyIsOptional:(NSString*)propertyName
{
    return YES;
}
@end

@implementation RESModel
+(BOOL)propertyIsOptional:(NSString*)propertyName
{
    return YES;
}
@end
