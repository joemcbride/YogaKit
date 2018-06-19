//
//  MyView.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/17/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (BOOL)isFlipped {
    return TRUE;
}

- (void)drawRect:(NSRect)dirtyRect {

    [self.backgroundColor setFill];
    NSRectFill(dirtyRect);

    [super drawRect:dirtyRect];
}

@end
