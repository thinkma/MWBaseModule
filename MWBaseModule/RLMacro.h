//
//  RLMacro.h
//  WKRLProject
//
//  Created by wankahuanju2 on 2018/12/20.
//  Copyright © 2018 wankahuanju2. All rights reserved.
//

#import <Foundation/Foundation.h>

// 判断是否是iPhone X
#define IPHONE_X \
({BOOL isPhoneX = NO;\
if (@available(iOS 11.0, *)) {\
isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;\
}\
(isPhoneX);})


#define  TabbarSafeBottomMargin         (IPHONE_X ? 34.f : 0.f)

#define STATUS_BAR_HEIGHT (IPHONE_X ? 44 : 20)
// 导航栏高度
#define SafeAreaTopHeight (IPHONE_X ? 88 : 64)


// tabBar高度
#define SafeAreaBottomHeight (IPHONE_X ? (49 + 34) : 49)

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidthRatio  (ScreenWidth / 375.0)
#define kScreenHeightRatio (ScreenHeight / 667.0)

#define RLKeyWindow          [UIApplication sharedApplication].keyWindow


#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]

//字体
#define fontNamePF @"PingFang SC"

#define fontNamePFBold @"PingFangSC-Semibold"

#define fontNameSF @"San Francisco Display"



//循环引用-----------------------------------------------------------------------------
//弱引用/强引用  可配对引用在外面用WeakSelf(self)，block用StrongSelf(self)  也可以单独引用在外面用WeakSelf(self) block里面用weakself
#define WeakSelf(type)  __weak typeof(type) weak##type = type;
#define StrongSelf(type)  __strong typeof(type) type = weak##type;

#define PICTURETAG @"[图片]"

#define strongify(...) \
rac_keywordify \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
metamacro_foreach(rac_strongify_,, __VA_ARGS__) \
_Pragma("clang diagnostic pop")

#define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"Language"]

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self
#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define DocumentPath ([NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject])

#define RGBColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
