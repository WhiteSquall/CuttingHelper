//
//  AppDelegate.m
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (IBAction)halfAngle:(NSButton *)sender
{
	
		//시작 각도 필드 처리하기
	
	if ([sender state] == true)
		{
		CheckBox = true;
		[_pointStartAngle setSelectable: false];
		[_pointStartAngle setEditable: false];
		[_pointStartAngle setStringValue:@""];
		[_pointStartAngle setBackgroundColor:[NSColor redColor]];
		}
	else
		{
		CheckBox = false;
		[_pointStartAngle setSelectable: true];
		[_pointStartAngle setEditable: true];
		[_pointStartAngle setBackgroundColor:[NSColor whiteColor]];
		}

}

- (IBAction)pointCalculating:(NSButton *)sender //임의의 숫자 입력시 재입력 요구를 2번 반복할 필요가 있나?
{
	[_textData setString:@""];
	
	if ([_pointPCD doubleValue] > 0 && [_pointNumber intValue] > 1)
		{
		_myPCDHelper = [[PCDHelper alloc] init];
		
		[_textData setString: [_myPCDHelper updatePCD :CheckBox :[_pointPCD doubleValue] :[_pointStartAngle doubleValue] :[_pointNumber intValue]]];
		}
	else
		{
		[_textData setString:@" Input Data"];
		}
	
}

- (IBAction)pointAddView:(NSButton *)sender
{
	[_textData setString:@""];
	
	if ([_pointPCD doubleValue] > 0 && [_pointNumber intValue] > 1)
		{
		_myPCDHelper = [[PCDHelper alloc] init];
		
		[_textData setString: [_myPCDHelper updateDistance :[_pointPCD doubleValue] :[_pointNumber intValue]]];
		}
	else
		{
		[_textData setString:@" Input Data"];
		}
	
}
@end