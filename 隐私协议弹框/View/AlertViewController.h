//
//  AlertViewController.h
//  11.12
//
//  Created by Adam on 2018/12/13.
//  Copyright © 2018年 Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertViewController : UIViewController
/**
 弹框内容文本
 */
@property (nonatomic, copy) NSString *contentStr;

- (void)showAlert:(UIViewController *)vc;
@end
