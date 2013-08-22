//
//  AppDelegate.h
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 21..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class CallHelper;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *pointPCD;
@property (weak) IBOutlet NSTextField *pointNumber;
@property (weak) IBOutlet NSTextField *pointAngle;
@property (weak) IBOutlet NSTextField *pointLabel;
@property (strong) CallHelper *callhelper;

- (IBAction)startButton:(id)sender;

@end