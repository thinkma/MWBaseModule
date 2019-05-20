//
//  RLBaseNetworking.h
//  WKRLProject
//
//  Created by wankahuanju2 on 2019/1/9.
//  Copyright © 2019 wankahuanju2. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum ResultCode {
    SUCCESSFUL, // 成功
    FAILED,    // 失败
    ERROR     // 网络错误
} ResultCode;


typedef void(^Complete)(ResultCode ResultCode, id result);



@interface RLBaseNetworking : NSObject

+(NSMutableDictionary *)paramsBase;







@end


