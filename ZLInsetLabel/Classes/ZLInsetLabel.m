#import "ZLInsetLabel.h"

@implementation ZLInsetLabel

- (void)setEdgeInsets:(UIEdgeInsets)edgeInsets {
    _insetTop = edgeInsets.top;
    _insetLeft = edgeInsets.left;
    _insetBottom = edgeInsets.bottom;
    _insetRight = edgeInsets.right;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (UIEdgeInsets)edgeInsets {
    return UIEdgeInsetsMake(_insetTop, _insetLeft, _insetBottom, _insetRight);
}
- (ZLInsetLabel *(^)(CGFloat, CGFloat, CGFloat, CGFloat))inset {
    return ^(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right) {
        self.edgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (void)setInsetTop:(CGFloat)insetTop {
    _insetTop = insetTop;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)setInsetLeft:(CGFloat)insetLeft {
    _insetLeft = insetLeft;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)setInsetBottom:(CGFloat)insetBottom {
    _insetBottom = insetBottom;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)setInsetRight:(CGFloat)insetRight {
    _insetRight = insetRight;
    [self invalidateIntrinsicContentSize];
    [self setNeedsDisplay];
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInsets)];
}

- (CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    size.width += _insetLeft + _insetRight;
    size.height += _insetTop + _insetBottom;
    return size;
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize fitSize = [super sizeThatFits:CGSizeMake(size.width - _insetLeft - _insetRight, size.height - _insetTop - _insetBottom)];
    fitSize.width += _insetLeft + _insetRight;
    fitSize.height += _insetTop + _insetBottom;
    return fitSize;
}

@end
