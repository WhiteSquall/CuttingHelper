//
//  AppDelegate.m
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import "AppDelegate.h"
#import "PCDHelper.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (IBAction)halfAngle:(NSButton *)sender
{
	
	if ([sender state] == true)
		{
		mButton = true;
		}
	else
		{
		mButton = false;
		}
}

- (IBAction)pointCalculating:(NSButton *)sender
{
	
		// Data setting
	NSString *tData = nil;
	int i = 1;
	
	double mPCD = [_pointPCD doubleValue] / 2;
	double mAngle = 360 / [_pointNumber intValue];
	double mStartAngle = [_pointStartAngle doubleValue];
	
	if (mButton == true)
		{
		mStartAngle = mAngle / 2;
		}
	
	PCDHelper *myPCDHelper = [[PCDHelper alloc] init];
		
	tData = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", [self.pointPCD doubleValue], [self.pointNumber intValue], mAngle];
	
	while(i <= [_pointNumber intValue])
		{
		
		double RealAngle = mStartAngle + mAngle * i - mAngle;
		[myPCDHelper dataUpate:mPCD :RealAngle];
		tData = [tData stringByAppendingFormat:@"no.%d x 좌표 = %0.3f\t y 좌표 = %0.3f\n", i, [myPCDHelper AxisX], [myPCDHelper AxisY]];
		
		i++;
		
		}

	[_textData setString: tData];

}
@end
