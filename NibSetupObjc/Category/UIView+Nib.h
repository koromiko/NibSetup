//
//  UIView+Nib.h
//  NibSetup_ObjC
//
//  Created by Wayne on 2018/6/12.
//  Copyright © 2018年 STH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(Nib)
@property(class,readonly,getter=instantiateFromNib)__kindof UIView* instantiateFromNib;
+(instancetype)instantiateFromNib;
@end
