//
//  BasicViewController.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/17/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "BasicViewController.h"
#import "MyView.h"
#import <YogaKit/NSView+Yoga.h>

@interface BasicViewController ()
@end

@implementation BasicViewController

- (id)init {
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nil];
    return self;
}

- (void)updateLayout {
    self.view.yoga.width = YGPointValue(self.view.frame.size.width);
    self.view.yoga.height = YGPointValue(self.view.frame.size.height);
    [self.view.yoga applyLayoutPreservingOrigin:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    MyView *root = (MyView *)self.view;
    root.name = @"root";
    root.backgroundColor = [NSColor redColor];
    root.yoga.isEnabled = YES;
    root.yoga.width = YGPointValue(self.view.frame.size.width);
    root.yoga.height = YGPointValue(self.view.frame.size.height);
    root.yoga.alignItems = YGAlignFlexStart;
    root.yoga.justifyContent = YGJustifyFlexStart;
    root.yoga.flexDirection = YGFlexDirectionColumn;
    root.yoga.position = YGPositionTypeRelative;

    [self addChild:@"Child 1" color:[NSColor greenColor]];
    [self addChild:@"Child 2" color:[NSColor blueColor]];
    [self addChild:@"Child 3" color:[NSColor purpleColor]];

    [root.yoga applyLayoutPreservingOrigin:YES];
}

- (void)addChild:(NSString *)name color:(NSColor *)color {
    MyView *child = [MyView new];
    child.name = name;
    child.backgroundColor = color;
    child.yoga.isEnabled = YES;
    child.yoga.width = YGPointValue(100);
    child.yoga.height = YGPointValue(40);
    child.yoga.flexGrow = 1;
    child.yoga.flexShrink = 1;

    [self.view addSubview:child];
}

@end
