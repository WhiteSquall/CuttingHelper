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
@property (weak) IBOutlet NSTextField *pointPCD; // PCD 입력 필드
@property (weak) IBOutlet NSTextField *pointNumber; // 홀 갯수 입력 필드
@property (weak) IBOutlet NSTextField *pointStartAngle; // 시작 각도 입력 필드
@property (unsafe_unretained) IBOutlet NSTextView *textData; // 출력 필드

- (IBAction)halfAngle:(NSButton *)sender; // 사작 각도/2 버튼
- (IBAction)pointCalculating:(NSButton *)sender; // 계산 버튼
- (IBAction)pointAddView:(NSButton *)sender; // 측정 버튼

@end