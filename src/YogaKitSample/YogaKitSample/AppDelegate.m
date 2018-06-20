//
//  AppDelegate.m
//  YogaKitSample
//
//  Created by Joseph McBride on 6/17/18.
//  Copyright © 2018 Outlander. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate ()
@property MainWindowController *windowController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _windowController = [MainWindowController new];

    [_windowController.window makeKeyAndOrderFront:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
}


@end
