//
//  UILabel+Font.m
//  FontTest
//
//  Created by 南鑫林 on 16/9/7.
//  Copyright © 2016年 adan. All rights reserved.
//

#import "UILabel+Font.h"
#import <objc/runtime.h>

#define SizeScale ((kScreenHeight > 568) ? kScreenHeight/568 : 1)

@implementation UILabel (Font)

+ (void)load{
    //xib创建
    Method imp = class_getInstanceMethod([self class], @selector(initWithCoder:));
    Method myImp = class_getInstanceMethod([self class], @selector(myInitWithCoder:));
    method_exchangeImplementations(imp, myImp);
    
    //代码initwithframe创建
    Method c = class_getInstanceMethod([self class], @selector(initWithFrame:));
    Method d = class_getInstanceMethod([self class], @selector(myInitWithFrame:));
    method_exchangeImplementations(c, d);
}

#pragma mark - xib创建
- (id)myInitWithCoder:(NSCoder*)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        CGFloat fontSize = self.font.pointSize;
        self.font = [UIFont systemFontOfSize:fontSize*SizeScale];
        NSLog(@"%f",SizeScale);
    }
    return self;
}

#pragma mark - 代码initwithframe创建
- (id)myInitWithFrame:(CGRect )rect {
    [self myInitWithFrame:rect];
    if (self) {
        CGFloat fontSize = self.font.pointSize;
        self.font = [UIFont systemFontOfSize:fontSize*SizeScale];
        NSLog(@"%f",SizeScale);
    }
    return self;
}

@end
