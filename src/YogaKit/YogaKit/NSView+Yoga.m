//
//  NSView+Yoga.m
//  YogaKit
//
//  Created by Joseph McBride on 6/17/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "NSView+Yoga.h"
#import "YGLayout+Private.h"
#import <objc/runtime.h>

static const void *kYGYogaAssociatedKey = &kYGYogaAssociatedKey;

@implementation NSView (Yoga)

- (YGLayout *)yoga
{
    YGLayout *yoga = objc_getAssociatedObject(self, kYGYogaAssociatedKey);
    if (!yoga) {
        yoga = [[YGLayout alloc] initWithView:self];
        objc_setAssociatedObject(self, kYGYogaAssociatedKey, yoga, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }

    return yoga;
}

- (BOOL)isYogaEnabled
{
    return objc_getAssociatedObject(self, kYGYogaAssociatedKey) != nil;
}

- (void)configureLayoutWithBlock:(YGLayoutConfigurationBlock)block
{
    if (block != nil) {
        block(self.yoga);
    }
}

- (CGSize)sizeThatfits:(CGSize)size
{
    CGSize sizeThatFits = self.fittingSize;
    sizeThatFits.width = MIN(sizeThatFits.width, size.width);
    sizeThatFits.height = MIN(sizeThatFits.height, size.height);
    return sizeThatFits;
}

@end
