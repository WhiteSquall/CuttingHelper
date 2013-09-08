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

- (NSString*) dataUpate :(bool)HalfAngleCheck :(double)mPCD :(double)mStartAngle :(int)mNumber
{
	
	NSString *OutputText = nil;
	int LoopPCDNumber = 1;
	double RealAngle = 360 / mNumber;
	double RealStartAngle = (HalfAngleCheck == true ? RealAngle / 2 : mStartAngle);
	LengthValue = mPCD / 2;
	
	OutputText = [NSString stringWithFormat:@"PCD : ∅%0.3fmm\nNumber of Point : %dea\nAngle of Point to Point : %0.3fº\n\n", LengthValue, mNumber, RealAngle];
	
	while(LoopPCDNumber <= mNumber)
		{
		AngleValue = RealStartAngle + (RealAngle * LoopPCDNumber) - RealAngle;
		OutputText = [OutputText stringByAppendingFormat:@"no.%d x 좌표 = %0.3f\t y 좌표 = %0.3f\n", LoopPCDNumber, [self AxisX], [self AxisY]];
		
		LoopPCDNumber++;
		
		}
	
	return OutputText;
	
}

- (double) AxisX
{
	double x = LengthValue * cos(AngleValue * PI / 180);
	
	return x;
}

- (double) AxisY
{
	double y = LengthValue * sin(AngleValue * PI / 180);
	
	return y;
}

@end