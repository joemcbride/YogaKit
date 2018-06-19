//
//  AppDelegate.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/17/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "AppDelegate.h"
#import "BasicViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property BasicViewController *controller;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.controller = [[BasicViewController alloc] init];
    self.window.contentView = self.controller.view;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
}


@end
