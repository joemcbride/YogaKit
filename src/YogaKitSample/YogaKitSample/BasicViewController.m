//
//  BasicViewController.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/17/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "BasicViewController.h"
#import "BasicView.h"
#import <YogaKit/NSView+Yoga.h>

@interface BasicViewController ()
@end

@implementation BasicViewController

-(void)loadView {
    self.view = [BasicView new];
}

- (void)applyYogaLayout {
    self.view.yoga.width = YGPointValue(self.view.frame.size.width);
    self.view.yoga.height = YGPointValue(self.view.frame.size.height);
    [self.view.yoga applyLayoutPreservingOrigin:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    BasicView *root = (BasicView *)self.view;
    root.name = @"root";
    root.backgroundColor = [NSColor redColor];

    [root configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.frame.size.width);
        layout.height = YGPointValue(self.view.frame.size.height);
        layout.alignItems = YGAlignFlexStart;
        layout.justifyContent = YGJustifyFlexStart;
        layout.flexDirection = YGFlexDirectionColumn;
        layout.position = YGPositionTypeRelative;
    }];

    [self addChild:@"Child 1" color:[NSColor greenColor]];
    [[self addChild:@"Child 2" color:[NSColor blueColor]] configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.flexGrow = 1;
    }];
    [self addChild:@"Child 3" color:[NSColor purpleColor]];

    [root.yoga applyLayoutPreservingOrigin:NO];
}

- (BasicView *)addChild:(NSString *)name color:(NSColor *)color {

    BasicView *child = [BasicView new];
    child.name = name;
    child.backgroundColor = color;
    [child configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.height = YGPointValue(40);
        layout.flexGrow = 0;
        layout.alignSelf = YGAlignStretch;
    }];

    [self.view addSubview:child];

    return child;
}

@end
