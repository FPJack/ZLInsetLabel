#import <UIKit/UIKit.h>


@interface ZLInsetLabel : UILabel
@property (nonatomic, assign)  CGFloat insetTop;
@property (nonatomic, assign)  CGFloat insetLeft;
@property (nonatomic, assign)  CGFloat insetBottom;
@property (nonatomic, assign)  CGFloat insetRight;
@property (nonatomic, assign) UIEdgeInsets edgeInsets;
@property (nonatomic,copy,readonly)ZLInsetLabel *(^inset)(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right); // edgeInsets 设置

@end
