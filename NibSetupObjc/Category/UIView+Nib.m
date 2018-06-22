//
//  UIView+Nib.m
//  NibSetup_ObjC
//
//  Created by Wayne on 2018/6/12.
//  Copyright © 2018年 STH. All rights reserved.
//

#import "UIView+Nib.h"

@implementation UIView(Nib)
+(instancetype)instantiateFromNib{
    id obj = [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self.class) owner:self options:nil].firstObject;
    if (!obj) {
        NSString *failMsg = [NSString stringWithFormat:@"The nib named (%@) is not found",self];
        NSAssert(obj, failMsg);
    }
    return obj;
}
@end
