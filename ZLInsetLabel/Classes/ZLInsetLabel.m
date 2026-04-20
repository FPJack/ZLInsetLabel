#import "ZLInsetLabel.h"

@implementation ZLInsetLabel

- (void)setEdgeInsets:(UIEdgeInsets)edgeInsets {
    _insetTop = edgeInsets.top;
    _insetLeading = edgeInsets.left;
    _insetBottom = edgeInsets.bottom;
    _insetTrailing = edgeInsets.right;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (UIEdgeInsets)edgeInsets {
    return UIEdgeInsetsMake(_insetTop, _insetLeading, _insetBottom, _insetTrailing);
}
- (ZLInsetLabel *(^)(CGFloat, CGFloat, CGFloat, CGFloat))inset {
    return ^(CGFloat top, CGFloat leading, CGFloat bottom, CGFloat trailing) {
        self.edgeInsets = UIEdgeInsetsMake(top, leading, bottom, trailing);
        return self;
    };
}

- (void)setInsetTop:(CGFloat)insetTop {
    _insetTop = insetTop;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)setInsetLeading:(CGFloat)insetLeading {
    _insetLeading = insetLeading;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)setInsetBottom:(CGFloat)insetBottom {
    _insetBottom = insetBottom;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)setInsetTrailing:(CGFloat)insetTrailing {
    _insetTrailing = insetTrailing;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (UIEdgeInsets)effectiveInsets {
    BOOL isRTL = (self.effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft);
    CGFloat left  = isRTL ? _insetTrailing : _insetLeading;
    CGFloat right = isRTL ? _insetLeading  : _insetTrailing;
    return UIEdgeInsetsMake(_insetTop, left, _insetBottom, right);
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, [self effectiveInsets])];
}

- (CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    size.width += _insetLeading + _insetTrailing;
    size.height += _insetTop + _insetBottom;
    return size;
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize fitSize = [super sizeThatFits:CGSizeMake(size.width - _insetLeading - _insetTrailing, size.height - _insetTop - _insetBottom)];
    fitSize.width += _insetLeading + _insetTrailing;
    fitSize.height += _insetTop + _insetBottom;
    return fitSize;
}

@end