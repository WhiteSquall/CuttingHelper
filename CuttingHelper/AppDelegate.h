//
//  AppDelegate.h
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 21..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *pointPCD;
@property (weak) IBOutlet NSTextField *pointNumber;
@property (weak) IBOutlet NSTextField *pointAngle;
@property (weak) IBOutlet NSScrollView *pointView;

- (IBAction)startButton:(id)sender;

@end