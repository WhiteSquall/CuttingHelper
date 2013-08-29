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

@synthesize pointPCD;
@synthesize pointNumber;
@synthesize pointStartAngle;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (IBAction)pointCalculating:(NSButton *)sender {
	
	NSString *tData = nil;
	int i = 1;
	int j = [self.pointNumber intValue];
	double mPCD = [pointPCD doubleValue] / 2;
	double mAngle = 360 / [pointNumber intValue];
	
	PCDHelper *myPCDHelper = [[PCDHelper alloc] init];
		
	tData = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", [self.pointPCD doubleValue], [self.pointNumber intValue], mAngle];
	
	while(i <= j)
		{
		
		double RealAngle = [self.pointStartAngle doubleValue] + mAngle * i - mAngle;
		
		[myPCDHelper dataUpdate:mPCD :RealAngle];
		tData = [tData stringByAppendingFormat:@"no.%d x 좌표 = %0.3f\t y 좌표 = %0.3f\n", i, [myPCDHelper AxisX], [myPCDHelper AxisY]];
		
		i++;
		
		}
	
	[self.textData setString:tData];

}
@end
