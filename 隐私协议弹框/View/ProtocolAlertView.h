//
//  ProtocolAlertView.h
//  11.12
//
//  Created by Adam on 2018/12/12.
//  Copyright © 2018年 Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProtocolAlertView : UIView

/**
 弹框内容文本
 */
@property (nonatomic, copy) NSString *contentStr;

- (void)showAlert:(UIViewController *)vc;
@end
