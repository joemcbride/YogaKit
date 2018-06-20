//
//  MainWindowController.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/19/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "MainWindowController.h"
#import "BasicViewController.h"

@interface MainWindowController ()

@property (nonatomic, strong) BasicViewController* basics;

@end

@implementation MainWindowController

- (id)init {
    self = [super initWithWindowNibName:NSStringFromClass([self class]) owner:self];
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];

    self.basics = [BasicViewController new];
    self.window.contentView = self.basics.view;
    [self.basics applyYogaLayout];
}

- (void)windowDidResize:(NSNotification *)notification {
    [self.basics applyYogaLayout];
}

@end
