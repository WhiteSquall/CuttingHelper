//
//  AppDelegate.h
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PCDHelper.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
	bool CheckBox;
}

@property (nonatomic, strong) PCDHelper *myPCDHelper;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *pointPCD;
@property (weak) IBOutlet NSTextField *pointNumber;
@property (weak) IBOutlet NSTextField *pointStartAngle;
@property (unsafe_unretained) IBOutlet NSTextView *textData;

- (IBAction)halfAngle:(NSButton *)sender;
- (IBAction)pointCalculating:(NSButton *)sender;
- (IBAction)pointAddView:(NSButton *)sender;

@end