//
//  AlertViewController.m
//  11.12
//
//  Created by Adam on 2018/12/13.
//  Copyright © 2018年 Lin. All rights reserved.
//

#import "AlertViewController.h"
#define leftMargin (50 *kScale)
#define topMargin (108 *kScale)
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScale (kScreenWidth) / 375.0

@interface AlertViewController ()
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UILabel *titleL;
@property (nonatomic, strong) UIButton *agreeBtn;

@end

@implementation AlertViewController

-(instancetype)init{
    
    if (self == [super init]) {
        
        self.view.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        
        [self.view addSubview:self.contentView];
        [self.contentView addSubview:self.titleL];
        [self.contentView addSubview:self.textView];
        [self.contentView addSubview:self.agreeBtn];
        [self setFrame];
    }
    return self;
    
}
- (void)setFrame
{
    CGFloat width = self.contentView.bounds.size.width;
    CGFloat height = self.contentView.bounds.size.height;
    CGFloat margin = 20 *kScale;
    self.titleL.frame = CGRectMake(margin, margin *0.7, width -margin *2, 20 *kScale);
    self.textView.frame = CGRectMake(margin, CGRectGetMaxY(self.titleL.frame) +margin *0.7, width -margin *2, height - margin *5);
    self.agreeBtn.frame = CGRectMake(margin, height - margin *3, width - margin *2, margin *2);
    
}

- (void)showAlert:(UIViewController *)vc
{
    [vc presentViewController:self animated:YES completion:nil];
}

- (void)dismissAlertView:(UIButton *)btn
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)setContentStr:(NSString *)contentStr
{
    _contentStr = contentStr;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:contentStr];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = 5 *kScale;
    [attributedString addAttributes:@{NSParagraphStyleAttributeName:paragraphStyle,
                                      NSFontAttributeName:[UIFont systemFontOfSize:13]
                                      } range:NSMakeRange(0, contentStr.length)];
    self.textView.attributedText = attributedString;
    
}
- (UITextView *)textView
{
    if (_textView == nil) {
        _textView = [[UITextView alloc] init];
        _textView.scrollEnabled = NO;
        _textView.showsHorizontalScrollIndicator = NO;
        _textView.showsVerticalScrollIndicator = NO;
        _textView.textColor = [UIColor colorWithRed:34/255.0 green:34/255.0 blue:34/255.0 alpha:1.0];
        _textView.font = [UIFont systemFontOfSize:14];
        _textView.editable = NO;
    }
    return _textView;
}
- (UIView *)contentView
{
    if (_contentView == nil) {
        _contentView = [[UIView alloc] init];
        _contentView.backgroundColor = [UIColor whiteColor];
        _contentView.frame = CGRectMake(leftMargin, topMargin, kScreenWidth - leftMargin *2, kScreenHeight - topMargin *2);
        _contentView.layer.cornerRadius = 10 *kScale;
    }
    return _contentView;
}
- (UILabel *)titleL
{
    if (_titleL == nil) {
        _titleL = [[UILabel alloc] init];
        _titleL.textColor = [UIColor blackColor];
        _titleL.font = [UIFont systemFontOfSize:17 *kScale weight:UIFontWeightHeavy];
        _titleL.textAlignment = 1;
        _titleL.text = @"用户隐私政策概要";
    }
    return _titleL;
}

- (UIButton *)agreeBtn
{
    if (_agreeBtn == nil) {
        _agreeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_agreeBtn setTitle:@"同意" forState:UIControlStateNormal];
        [_agreeBtn.titleLabel setFont:[UIFont systemFontOfSize:18]];
        [_agreeBtn setTitleColor:[UIColor colorWithRed:47/255.0 green:142/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal];
        [_agreeBtn addTarget:self action:@selector(dismissAlertView:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _agreeBtn;
}

@end
