//
//  AppDelegate.m
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 21..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import "AppDelegate.h"
#import "CallHelper.h"

@implementation AppDelegate

@synthesize pointPCD = _pointPCD;
@synthesize pointNumber = _pointNumber;
@synthesize pointAngle = _pointAngle;
@synthesize pointLabel = _pointLabel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}

- (IBAction)startButton:(id)sender {
	
	aText = nil;
	i = 1;
	
	CallHelper *myCallHelper = [[CallHelper alloc] init];
	[self setCallhelper:myCallHelper];
	
	[myCallHelper setMLength:[self.pointPCD doubleValue] / 2];
	double rAngle = 360 / [self.pointNumber integerValue];
	
	aText = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", [self.pointPCD doubleValue], [self.pointNumber integerValue], rAngle];
	
	while(i <= [self.pointNumber integerValue])
		{
		
		double j = ([self.pointAngle doubleValue] + (rAngle * i)) - rAngle;
		
		[myCallHelper setMAngle:j];
		aText = [aText stringByAppendingFormat:@"no.%d x 좌표 = %0.3f\t y 좌표 = %0.3f\n", i, [myCallHelper TriangleX], [myCallHelper TriangleY]];
		
		i++;
		
		}

	[self.pointLabel setStringValue:aText];
}
@end