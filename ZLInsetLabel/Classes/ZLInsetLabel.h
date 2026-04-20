#import <UIKit/UIKit.h>


@interface ZLInsetLabel : UILabel
@property (nonatomic, assign)  CGFloat insetTop;
@property (nonatomic, assign)  CGFloat insetBottom;

@property (nonatomic, assign)  CGFloat insetLeading;
@property (nonatomic, assign)  CGFloat insetTrailing;

@property (nonatomic, assign) UIEdgeInsets edgeInsets;
@property (nonatomic,copy,readonly)ZLInsetLabel *(^inset)(CGFloat top, CGFloat leading, CGFloat bottom, CGFloat trailing); // edgeInsets 设置

@end
