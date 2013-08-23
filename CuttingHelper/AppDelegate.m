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
	
	CallHelper *aCallhelper = [[CallHelper alloc] init];
	[self setCallhelper:aCallhelper];

}

- (IBAction)startButton:(id)sender {
	
	NSString *aText;
	
	double aPCD = [self.pointPCD doubleValue];
	int aNumber = [self.pointNumber intValue];
	double aAngle = [self.pointAngle doubleValue];
	
	double bX = aPCD * aNumber * aAngle;
	
	aText = [NSString stringWithFormat:@"PCD : %f\nNumber of Point : %dea\nAngle of Point to Point : %0.3f\n x= %0.3f", aPCD, aNumber, aAngle, bX];
	
	[self.pointLabel setStringValue:aText];
}
@end