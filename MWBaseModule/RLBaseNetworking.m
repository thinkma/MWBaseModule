//
//  RLBaseNetworking.m
//  WKRLProject
//
//  Created by wankahuanju2 on 2019/1/9.
//  Copyright © 2019 wankahuanju2. All rights reserved.
//

#import "RLBaseNetworking.h"



@implementation RLBaseNetworking


+(NSMutableDictionary *)paramsBase
{
    NSMutableDictionary * params = [NSMutableDictionary dictionary];
    return params;
}





//urlEncode编码
+(NSString *)urlEncodeStr:(NSString *)input{
    if ([input isKindOfClass:[NSArray class]]) {
        NSMutableArray * arr = (NSMutableArray *)input;
        input = [arr componentsJoinedByString:@","];
    }
    NSString *charactersToEscape = @"?!@#$^&%*+,:;='\"`<>()[]{}/\\| ";
    NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:charactersToEscape] invertedSet];
    NSString *upSign = [input stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
    return upSign;
}

//urlEncode编码
+(NSString *)urlEncodeStrkey:(NSString *)input{
    if ([input isEqualToString:@"img[]"]) {
        input = @"img[0]";
    }
    NSString *charactersToEscape = @"?!@#$^&%*+,:;='\"`<>()[]{}/\\| ";
    NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:charactersToEscape] invertedSet];
    NSString *upSign = [input stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
    return upSign;
}

/**
 获取系统时间
 
 */
+ (NSString *)systemTime
{
    NSTimeInterval interval = [[NSDate date] timeIntervalSince1970];
    NSString * time = [NSString stringWithFormat:@"%.0f",interval];
    return time;
}









@end
