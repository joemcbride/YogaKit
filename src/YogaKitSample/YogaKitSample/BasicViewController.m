//
//  BasicViewController.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/17/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "BasicViewController.h"
#import "MyView.h"
#import "NSView+Yoga.h"

@interface BasicViewController ()

@end

@implementation BasicViewController

- (id)init {
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nil];
    return self;
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
    root.yoga.flexDirection = YGFlexDirectionRow;
    root.yoga.position = YGPositionTypeRelative;

    MyView *child1 = [MyView new];
    child1.name = @"child 1";
    child1.backgroundColor = [NSColor greenColor];
    child1.yoga.isEnabled = YES;
    child1.yoga.position = YGPositionTypeRelative;
//    child1.yoga.width = YGPointValue(100);
//    child1.yoga.height = YGPointValue(100);
//    child1.yoga.flexGrow = 2;

    MyView *child2 = [MyView new];
    child2.name = @"child 2";
    child2.backgroundColor = [NSColor blueColor];
    child2.yoga.isEnabled = YES;
    child2.yoga.position = YGPositionTypeRelative;
//    child2.yoga.width = YGPointValue(100);
//    child2.yoga.height = YGPointValue(100);
//    child2.yoga.flexGrow = 0;
//    child2.yoga.margin = YGPointValue(10.0);

    MyView *child3 = [MyView new];
    child3.name = @"child 3";
    child3.backgroundColor = [NSColor purpleColor];
    child3.yoga.isEnabled = YES;
//    child3.yoga.position = YGPositionTypeAbsolute;
    child3.yoga.isIncludedInLayout = YES;
//    child3.yoga.width = YGPointValue(50);
//    child3.yoga.height = YGPointValue(50);
//    child3.frame = (CGRect) {
//        .origin = {
//            .x = 0,
//            .y = 0
//        },
//        .size = {
//            .width = 200,
//            .height = 100,
//        }
//    };

    [root addSubview:child1];
//    [root addSubview:child2];
    [root addSubview:child3];

    [root.yoga applyLayoutPreservingOrigin:NO];
}

@end
