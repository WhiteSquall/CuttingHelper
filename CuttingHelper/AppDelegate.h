//
//  AppDelegate.h
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class PCDHelper;

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
	bool mButton;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *pointPCD;
@property (weak) IBOutlet NSTextField *pointNumber;
@property (weak) IBOutlet NSTextField *pointStartAngle;
@property (unsafe_unretained) IBOutlet NSTextView *textData;

- (IBAction)halfAngle:(NSButton *)sender;
- (IBAction)pointCalculating:(NSButton *)sender;

@end
