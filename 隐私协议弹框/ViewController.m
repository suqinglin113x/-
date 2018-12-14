//
//  ViewController.m
//  隐私协议弹框
//
//  Created by Adam on 2018/12/14.
//  Copyright © 2018年 com.qzxq. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolAlertView.h"
#import "AlertViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * _agreeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_agreeBtn setTitle:@"点我" forState:UIControlStateNormal];
    _agreeBtn.frame = CGRectMake(0, 400, 200, 40);
    [_agreeBtn.titleLabel setFont:[UIFont systemFontOfSize:18]];
    [_agreeBtn setTitleColor:[UIColor colorWithRed:47/255.0 green:142/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal];
    [_agreeBtn addTarget:self action:@selector(openAlertView) forControlEvents:UIControlEventTouchUpInside];
}


- (void)openAlertView
{
    /********方式1*********/
//    ProtocolAlertView *alert = [ProtocolAlertView new];
    /********方式2*********/
    AlertViewController *alert = [AlertViewController new];
    alert.contentStr = @"支付宝钱包是国内领先的移动支付平台，内置风靡全国的平民理财神器余额宝，还有还信用卡、转账、充话费、缴水电煤全部免费，有了钱包还能便宜打车、去便利店购物、售货机买饮料。支付宝钱包更有众多精品公众账号(支付宝服务窗账号)为您提供贴心服务(或线上购买)。\n 你和1亿多钱包用户一起，好钱包，很安全，快捷，会赚钱 ，更懂生活！\n 2013年第二季度开始，支付宝手机支付活跃用户数超过了Paypal，位居全球第一。\n 支付宝钱包2015年2月9日宣布从2月11日到2月19日，与品牌商户一起向用户发放约6亿元的红包。其中，现金超过1.56 亿元，购物消费红包约4.3 亿元。";
    [alert showAlert:self];
}


@end
