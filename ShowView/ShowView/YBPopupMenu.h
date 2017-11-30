//
//  YBPopupMenu.h
//  YBPopupMenu
//
//  Created by LYB on 16/11/8.
//  Copyright © 2016年 LYB. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kMainWindow  [UIApplication sharedApplication].keyWindow

@class YBPopupMenu;
@protocol YBPopupMenuDelegate <NSObject>

@optional
/**
 点击事件回调
 */
- (void)ybPopupMenuDidSelectedybPopupMenu:(YBPopupMenu *)ybPopupMenu;

@end


@interface YBPopupMenu : UIView

/**
 圆角半径 Default is 5.0
 */
@property (nonatomic, assign) CGFloat cornerRadius;

/**
 是否显示阴影 Default is YES
 */
@property (nonatomic, assign , getter=isShadowShowing) BOOL isShowShadow;


/**
 设置偏移距离 (>= 0) Default is 0.0 
 */
@property (nonatomic, assign) CGFloat offset;

/**
 设置显示模式 Default is YBPopupMenuTypeDefault
 */

/**
 代理
 */
@property (nonatomic, weak) id <YBPopupMenuDelegate> delegate;

+ (instancetype)showRelyOnView:(UIView *)view
                      showView:(UIView *)showView
                      delegate:(id<YBPopupMenuDelegate>)delegate;

/**
 在指定位置弹出

 @param point 需要弹出的point
 */
- (void)showAtPoint:(CGPoint)point;


/**
 依赖指定view弹出

 @param view 需要依赖的view
 */
- (void)showRelyOnView:(UIView *)view;

/**
 消失
 */
- (void)dismiss;
@end
