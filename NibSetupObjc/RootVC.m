//
//  RootVC.m
//  NibSetupObjc
//
//  Created by Wayne on 2018/6/23.
//  Copyright © 2018年 STH. All rights reserved.
//

#import "RootVC.h"
#import "BlurView.h"
#import "UIView+Nib.h"
@interface RootVC ()

@end

@implementation RootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showBlur];
}


-(void)showBlur{
    BlurView *bv = BlurView.instantiateFromNib;
    [self.view addSubview:bv];
    bv.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray *constraintsArr = [NSMutableArray new];
    [constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[bv]-0-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(bv)]];
    [constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[bv]-0-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(bv)]];
    [self.view addConstraints:constraintsArr.copy];
    
    
    NSDate *date = [NSDate date];
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"hh:mm"];
    NSString *timeStr = [formatter stringFromDate:date];
    
    [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"zh_Hant_TW"]];
    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Taipei"]];
    [formatter setDateFormat:@"UUU年 M月 d日"];
    [formatter setCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese]];
    NSString *dateStr = [formatter stringFromDate:date];
    
    [bv setTitle:timeStr subTitle:dateStr];
}
- (IBAction)GogoPress:(id)sender {
    [self showBlur];
}

@end
