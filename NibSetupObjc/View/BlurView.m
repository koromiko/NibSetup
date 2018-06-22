//
//  BlurView.m
//  NibSetupObjc
//
//  Created by Wayne on 2018/6/23.
//  Copyright © 2018年 STH. All rights reserved.
//

#import "BlurView.h"
@interface BlurView()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;

@end
@implementation BlurView

- (void)drawRect:(CGRect)rect {
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effView = [UIVisualEffectView.alloc initWithEffect:effect];
    effView.frame = UIApplication.sharedApplication.keyWindow.bounds;
    [self addSubview:effView];
    effView.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableArray *constraintsArr = [NSMutableArray new];
    [constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[effView]-0-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(effView)]];
    [constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[effView]-0-|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(effView)]];
    self.backgroundColor = UIColor.clearColor;
    [self sendSubviewToBack:effView];
    [self addConstraints:constraintsArr.copy];
}



-(void)setTitle:(NSString *)title subTitle:(NSString *)subTitle{
    self.titleLabel.text = title;
    self.subTitleLabel.text = subTitle;
}

- (IBAction)dismissPress:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        [self removeFromSuperview];
    }];
}

@end
