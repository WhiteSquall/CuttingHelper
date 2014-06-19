//
//  PCDHelper.m
//  CuttingHelper
//
//  Created by WhiteSquall on 2013. 8. 29..
//  Copyright (c) 2013년 WhiteSquall. All rights reserved.
//

#import "PCDHelper.h"
#import "math.h"

#define PI 3.14159265

@implementation PCDHelper

- (NSString*) updatePCD :(bool)HalfAngleCheck :(double)mPCD :(double)mStartAngle :(int)mNumber
{
	NSString *OutputPCD = nil;
	int LoopPCDNumber = 1;
	double RealAngle = 360 / (double)mNumber;
	double RealStartAngle = (HalfAngleCheck == true ? RealAngle / 2 : mStartAngle);
	double LengthValue = mPCD / 2;
	
	OutputPCD = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", mPCD, mNumber, RealAngle];
	
	while (LoopPCDNumber <= mNumber)
		{
		double AngleValue = RealStartAngle + (RealAngle * LoopPCDNumber) - RealAngle;
		double AxisX = LengthValue * cos(AngleValue * PI / 180);
		double AxisY = LengthValue * sin(AngleValue * PI / 180);
		
		OutputPCD = [OutputPCD stringByAppendingFormat :@"no.%d X%0.3f\t Y%0.3f\n", LoopPCDNumber, AxisX, AxisY];
		
		LoopPCDNumber++;
		}
	
	return OutputPCD;
}

- (NSString*) updateDistance:(double)mPCD :(int)mNumber
{	
	NSString *OutputDistance = nil;
	int loopPCDNumber = 2;
	double RealAngle = 360 / (double)mNumber;
	double LengthValue = mPCD / 2;
	
	OutputDistance = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", mPCD, mNumber, RealAngle];
	
	while (loopPCDNumber <= mNumber)
		{
		double AngleValue = RealAngle * (loopPCDNumber - 1) / 2;
		double PCDDistance = (LengthValue * sin(AngleValue * PI / 180) * 2);
		
		OutputDistance = [OutputDistance stringByAppendingFormat :@"1 to %d : %0.3fmm\n", loopPCDNumber, PCDDistance];
		
		loopPCDNumber++;
		}
	
	return OutputDistance;
}

@end