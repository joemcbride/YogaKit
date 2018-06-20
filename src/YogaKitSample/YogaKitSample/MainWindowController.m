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
    self.window.contentView.autoresizingMask = NSViewHeightSizable|NSViewWidthSizable;
    [self.basics updateLayout];
}

- (void)awakeFromNib {
    self.window.delegate = self;
}

- (void)windowDidResize:(NSNotification *)notification {
    [self.basics updateLayout];
}

@end
