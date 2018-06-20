//
//  BasicView.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/19/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "BasicView.h"

@implementation BasicView

- (instancetype)init {
    self = [super init];

    self.autoresizingMask = NSViewHeightSizable|NSViewWidthSizable;

    return self;
}

- (BOOL)isFlipped {
    return TRUE;
}

- (void)drawRect:(NSRect)dirtyRect {

    [self.backgroundColor setFill];
    NSRectFill(dirtyRect);

    [super drawRect:dirtyRect];
}

@end
